
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

    function Mortal() {
        //msg is an predefined object(global varaible) in solidity.
        //sender is the initiator of the transaction.
        owner = msg.sender;
    }
    
    function kill() {
        //selfdestruct is an in-build method in solidity
        //selfdestruct will kill the contract and transfer the ether to specified address
        //in ethereum blockchain it is not possible to remove anything but can be nullified 
        selfdestruct(owner);
    }
    
}
