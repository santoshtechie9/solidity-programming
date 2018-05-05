
pragma solidity ^0.4.15;

contract Participant {

    string public participantName;

    constructor (string _name) public {
        participantName = _name;
    }

}