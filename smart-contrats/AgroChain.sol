// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Roles.sol";
import "./Escrow.sol";

contract AgroChain is Roles {

    uint public productCount;

    struct Product {
        uint id;
        string name;
        string productType;
        uint quantity;
        uint totalCost;
        address farmer;

        uint initialPrice;
        uint finalPrice;
        uint demand;

        bool auctionActive;
        bool approved;
    }

    mapping(uint => Product) public products;
    mapping(uint => uint[]) public bids;

    // Voting
    mapping(uint => mapping(address => bool)) public voted;
    mapping(uint => uint) public approvalCount;
    uint public totalFarmers;

    // Escrow mapping
    mapping(uint => address) public escrowContracts;

    // EVENTS
    event ProductAdded(uint id);
    event AuctionStarted(uint id);
    event BidPlaced(uint id, uint amount);
    event AuctionEnded(uint id, uint finalPrice);
    event EscrowCreated(uint id, address escrow);

    // FARMER: ADD PRODUCT

    function addProduct(
        string memory name,
        string memory productType,
        uint quantity,
        uint totalCost
    ) public onlyFarmer {

        productCount++;

        products[productCount] = Product(
            productCount,
            name,
            productType,
            quantity,
            totalCost,
            msg.sender,
            0,
            0,
            0,
            false,
            false
        );

        emit ProductAdded(productCount);
    }

    // COMMUNITY: SET PRICE + START AUCTION

    function startAuction(uint productId, uint price) public onlyCommunity {

        products[productId].initialPrice = price;
        products[productId].auctionActive = true;

        emit AuctionStarted(productId);
    }

    
    // RETAILER: PLACE BID

    function bid(uint productId) public payable onlyRetailer {

        require(products[productId].auctionActive, "Auction not active");
        require(msg.value > products[productId].initialPrice, "Low bid");

        bids[productId].push(msg.value);

        emit BidPlaced(productId, msg.value);
    }

    // COMMUNITY: END AUCTION
   
    function stopAuction(uint productId) public onlyCommunity {

        require(products[productId].auctionActive, "Already stopped");

        uint total = 0;
        uint count = bids[productId].length;

        for (uint i = 0; i < count; i++) {
            total += bids[productId][i];
        }

        uint avg = total / count;

        products[productId].finalPrice = avg;
        products[productId].auctionActive = false;

        emit AuctionEnded(productId, avg);
    }

    
    // FARMERS: 51% APPROVAL
    
    function approvePrice(uint productId) public onlyFarmer {

        require(!voted[productId][msg.sender], "Already voted");

        voted[productId][msg.sender] = true;
        approvalCount[productId]++;

        if (approvalCount[productId] * 100 / totalFarmers >= 51) {
            products[productId].approved = true;
        }
    }

    
    // RETAILER: CREATE ESCROW
    
    function createEscrow(uint productId, uint demand) public payable onlyRetailer {

        require(products[productId].approved, "Not approved");

        uint totalAmount = products[productId].finalPrice * demand;

        require(msg.value == totalAmount, "Incorrect amount");

        Escrow escrow = new Escrow(
            products[productId].farmer,
            msg.sender
        );

        escrowContracts[productId] = address(escrow);

        payable(address(escrow)).transfer(msg.value);

        emit EscrowCreated(productId, address(escrow));
    }
}