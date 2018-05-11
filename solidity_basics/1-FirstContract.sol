pragma solidity ^0.4.22;

contract FirstContract {

    //instance variables
    address ownerAddress;
    uint data;

    //event definition
    event logData(uint dataToLog);

    //function modifier
    modifier onlyOwner() {
        
        //require throws an exception when the condition evaluates to false
        require(
            msg.sender == ownerAddress,
            "only owner can modify address"
            );
        _;
    }
    
    //constructor
    constructor(uint256 initData, address initOwner) public {
        data = initData;
        ownerAddress = initOwner;
    }

    function getData() public view returns (uint) {
        return data;
    }

    function setData(uint newData) onlyOwner public {
        data = newData;
    }

}

