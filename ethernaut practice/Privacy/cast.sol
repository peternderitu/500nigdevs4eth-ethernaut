pragma solidity ^0.6.0;

contract cast {
    bytes32 a = 0x54e50d8f3dcc7f31e48c1f53d271cd54292dc47aebe2d756ce019574393c88da;
    
    function convert() public view returns(bytes16) {
       bytes16 b = bytes16(a);
       return b;
    }
}