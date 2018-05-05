
pragma solidity ^0.4.15;

contract User {

    string public userName;

    constructor (string _name) internal {
        userName = _name;
    }

}


