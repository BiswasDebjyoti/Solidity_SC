pragma solidity ^0.4.0;
contract Hello{
    string hello="Hello World!";
    
    address  issuer;
    
    function Hello()
    {
        issuer=msg.sender;
    }
    
    modifier ifIssuer()
    {
         if(issuer!=msg.sender){
            throw;
         }
        else _;
    }
    
    function getHello() constant returns(string)
    {
        return hello;    
    }  
    
    function setHello(string newWord) ifIssuer returns(string)
    {
       
        hello=newWord;
        return "This is the Creator";
        
    }
    
    
}