pragma solidity ^0.4.22;

contract SampleArrays {

    //generic array
    int[] intArray =  [0,1,2,3,4,5,6,7,8,9];

    //byte array
    byte[] byteArray;

    constructor(uint index, int value) public {
        intArray[index] = value;

        //int[] myArray2 = intArray;
        //uint24[3] memory myArray3 = [1,2,99999];
    }

    function getData(uint index) public returns(int returnedData) {
        return intArray[index]; 
    }

    function setDataInArray(uint index, int value) public{
        intArray[index] = value;
    }

    function getArrayLength() public returns(uint returnArraLength) {
        return intArray.length;
    }

}