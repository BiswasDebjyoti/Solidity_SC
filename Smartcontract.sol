pragma solidity ^0.4.0;
contract MyPay{
 address owner;
 function MyPay()
 {   
 	owner=msg.sender;
 }
 
 modifier ifOwner{
    
    if(owner!=msg.sender)
    {
        throw;
    }
     
     _;
     
 }   
 
 function recieveFunds() payable
 {
     
     
 }
 
 function getFunds() ifOwner returns(uint)
 {
     return this.balance;
 }
    
    
}