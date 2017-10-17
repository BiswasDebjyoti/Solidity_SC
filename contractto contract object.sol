pragma solidity ^0.4.0;
contract Caller{
    
    Called call = Called(0xdc04977a2078c8ffdf086d618d1f961b6c546222);

   // Called call= new Called();
    
    function getNum() constant returns(uint)
    {
        return call.getNum();
    }
    
      function getStat() constant returns(bytes32)
    {
        return call.getStat();
    }
    




}
contract Called{
    bytes32 status="Nothing";
    uint numbr= 1000;
    
    function getNum() constant returns(uint)
    {
        return numbr;
    }
    
    function getStat() constant returns(bytes32)
    {
        return status;
    }
    
    
}
