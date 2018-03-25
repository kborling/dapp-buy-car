pragma solidity ^0.4.21;

contract Car {
    
    address public seller;
    address public buyer;
    string public vehicle;
    string title;
    uint256 public price;
    
    function RealEstate () public {
        seller = msg.sender;
        vehicle = "1969 Boss 429 Mustang";
        title = "08af8121576f059660b4eecdbafda21c40235d2812f82f70c4648deedd369aba";
        price = 99000000000000000000; // 99 Ether
    }
    
    function buyHouse () payable public {
        require(seller != 0x0);
        require(buyer == 0x0);
        require(msg.sender != seller);
        require(msg.value == price);
        buyer = msg.sender;
        seller.transfer(msg.value);
    }
}
