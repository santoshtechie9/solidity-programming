pragma solidity ^0.4.22;

contract SampleStrings {

    string myString = "";
    bytes myRawString;

    constructor(string initString, bytes rawStringInit) public {
        myString = initString;
        myRawString = rawStringInit;
        //myString2 holds pointer to myString    
        //string myString2 = myString;
    
        //myString3 is a string in memory
        string memory myString3 = "ABCDE";
        myString3 = "XYZ";

        //increment the length of myRawString
        //myRawString.lenght++;

    }

    function getStrings() public view returns(string,bytes){
        return (myString,myRawString);
    }

}