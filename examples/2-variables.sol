pragma solidity ^0.4.15;

/*
IN this contracts you will learn how to declare and user variable and functions in solidity. 
In the below contract user is the state vairable.
When the contract is deployed it changes the state of the contract. 
*/

contract User {

    //variable contain data. 
    //They maintain the state of the contract. 
    string public userName;

    //constructor function executed only once when the contract is deployed.
    function User(string _name) {
        userName = _name;
    }

    //function is the block of code that is executed when invoked  
    //function to change he name of the user
    function changeUserName(string _name) {
        userName = _name;
    }

}

