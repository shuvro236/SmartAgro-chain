pragma solidity ^0.8.0;

contract Escrow {

    address public farmer;
    address public retailer;

    bool public delivered;

    constructor(address _farmer, address _retailer) {
        farmer = _farmer;
        retailer = _retailer;
    }

    function confirmDelivery() public {
        require(msg.sender == retailer, "Only retailer");
        delivered = true;
    }

    function releaseFunds() public {
        require(delivered, "Not delivered");

        payable(farmer).transfer(address(this).balance);
    }

    function refund() public {
        require(!delivered, "Already delivered");

        payable(retailer).transfer(address(this).balance);
    }

    receive() external payable {}
}