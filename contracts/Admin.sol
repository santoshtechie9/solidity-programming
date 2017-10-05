
pragma solidity ^0.4.15;

/* 
The Admin is the super user and 
he will have access to the administration functionalty.
*/

 contract Admin {

    address public owner;

    function Admin() {
        owner = msg.sender;
    }

//Kill function is used to destroy the contract. 
//Ethereum blockchain is an immutable store. 
//It is not possible to delete the contract from blockchain but it can be destroyed preventing its future use.
//The in-build function suicide can be used to destroy the contract.

    function kill() {
         suicide(owner);
    }
} 