pragma solidity ^0.4.15;

contract HelloWorld {

    string public greeting;

    function HelloWold(string _text) {
        greeting = _text;
    }

    function getGreeting() constant returns (string) {
        return greeting;
    }

}

