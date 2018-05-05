
pragma solidity ^0.4.14;

contract Instructor {

    string public instructorName;

    constructor (string _name) public {
        instructorName = _name;
    }

}