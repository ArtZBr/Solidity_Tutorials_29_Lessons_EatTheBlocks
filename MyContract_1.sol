pragma solidity ^0.5.11;

//to manipulate data a function in needed
contract MyContract {
    //declare variable, name 'value', data type = integer
    uint value;
    
    //function getValue() will read value assigned to variable 'value'
    //external is a visibility modifier
    //view = read only, not going to modify blockchain data
    
    function getValue() external view returns (uint){
        
        //return statment that reference the variable 'value' declared outside of the function
        
        return value;   
    }
    
    //function takes a single argument that is an integer '_value'
    //not using the view keyword, this function modifies the data on the blockchain
    //nothing is returned in this function
    
    function getValue(uint _value) external {
        //assign _value of 'value' variable which is declared outside of the smart contract 
        value = _value;
    }  
}