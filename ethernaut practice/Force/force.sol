pragma solidity ^0.6.0;

contract  AcceptEth {
    address public owner;
    uint public price;
    mapping (address => uint) balance;

    constructor() public {
        owner = msg.sender;
        price = 0.0001 ether;
    }

    function accept() public payable {
        require(msg.value == price);
        balance[msg.sender] += msg.value;
    }
     function close(address payable _owner) public {
         selfdestruct(_owner);
     }
}