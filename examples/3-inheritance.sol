
//Inheritance

/*
Inheritance is the process by which one contract can inherit the functionality of another contract.
Inherited contract is called parent. Inheriting contract is called child.
The child contract will have access to all the functions in parent contract.
*/
pragma solidity ^0.4.15;

contract Mortal {
    
    //address is a data type in solidity
    address public owner;

    constructor () public{
        //msg is an predefined object(global varaible) in solidity.
        //sender is the initiator of the transaction.
        owner = msg.sender;
    }
    
    function kill() private{
        //selfdestruct is an in-build method in solidity
        //selfdestruct will kill the contract and transfer the ether to specified address
        //in ethereum blockchain it is not possible to remove anything but can be nullified 
        selfdestruct(owner);
    }
    
}

//Is the keyword to inherit the functionality.
//User contract inherits the Mortal contract
//It now has access to the entire functionality of the Mortal contract
contract User is Mortal {
    string public userName;

    constructor (string _name) public {
        userName = _name;
    }
}

//Is the keyword to inherit the functionality.
//Provider contract inherits the Mortal contract
//It now has access to the entire functionality of the Mortal contract
contract Provider is Mortal {
    string public providerName;

    constructor (string _name) public {
        providerName = _name;
    }
}

//complete the following steps
//deploy the user contract
//select functions
//you will be able to see the kill function that the use contract inherited from Mortal contract
//select the kill function and submit the transaction
