pragma solidity ^0.8.0;

contract Roles {

    mapping(address => bool) public farmers;
    mapping(address => bool) public retailers;
    mapping(address => bool) public community;

    function registerFarmer() public {
        farmers[msg.sender] = true;
    }

    function registerRetailer() public {
        retailers[msg.sender] = true;
    }

    function registerCommunity() public {
        community[msg.sender] = true;
    }

    modifier onlyFarmer() {
        require(farmers[msg.sender], "Not farmer");
        _;
    }

    modifier onlyRetailer() {
        require(retailers[msg.sender], "Not retailer");
        _;
    }

    modifier onlyCommunity() {
        require(community[msg.sender], "Not community");
        _;
    }
}