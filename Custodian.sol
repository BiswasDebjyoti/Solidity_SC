pragma solidity ^0.4.0;
contract Custodian{
    address owner;
    function Custodian()
    {
        owner= msg.sender;
    }
    modifier ifnot
    {
        if(owner!=msg.sender)
        {
            throw;
        }
        
        _;
    }
    
    event checkif(string msgs,uint moneySent);
    
    function sendMoney() payable
    {
        checkif("This amount has been send= ",msg.value);
    }
    
    function withdraw(uint amt) ifnot
    {
        owner.transfer(amt);
    }
    
  
  //function checkBal() constant return(uint)
    //{
      //  return this.balance;
    //}//
    
    function getBal() constant ifnot returns(uint) 
    {
        return this.balance;   
    }
    
    }
    