

//Modifier

/*
Modified is a build in function in solidity.
It allows a user to specify a condition that must be fulfilled inorder for a 
function to be executed.
*/
pragma solidity ^0.4.11;

contract Mortal {
    
    //address is a data type in solidity
    address public owner;

    function Mortal() {
        //msg is an predefined object(global varaible) in solidity.
        //sender is the initiator of the transaction.
        owner = msg.sender;
    }


    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    //onlyOwner is the modified that check for the condition.
    function kill() onlyOwner {
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

    function User(string _name) {
        userName = _name;
    }
}

//Is the keyword to inherit the functionality.
//Provider contract inherits the Mortal contract
//It now has access to the entire functionality of the Mortal contract
contract Provider is Mortal {
    string public providerName;

    function Provider(string _name) {
        providerName = _name;
    }
}

//complete the following steps
//deploy the user contract
//select functions
//you will be able to see the kill function that the use contract inherited from Mortal contract
//select the kill function and submit the transaction
