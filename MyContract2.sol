
pragma solidity ^0.5.11;


//can assign visibility to variables and control how they are access
//variable of type integer, private
//private variable can only be read from inside of smart contract

contract MyContract {
    
    //private cannot be read, this applies to ethereum virtual machine
    //internal, variable can be read from inherited smart contract
    //public, can be read from w/in smart contract, smart contract inherited, and from outside of smart contract
    //default = private
    uint public a;

    function foo() external {
       
       // uint b = a+ 1; gives an unused local variable error
        uint b  = a +1;
    }
}

/*public variable (uint public a;) behind the hood creates a public function that is called withthe same name of the varible

-techically looks like this behind the hood
??

function foo() external  {
    uint b= a+1;
    }

*/