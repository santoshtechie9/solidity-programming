pragma solidity ^0.4.22;

contract SampleStrings {

    string myString = "";
    bytes myRawString;

    constructor(string initString, bytes rawStringInit) public {
        myString = initString;

        //myString2 holds pointer to myString    
        //string myString2 = myString;
    
        //myString3 is a string in memory
        string memory myString3 = "ABCDE";

        myString3 = "XYZ";
        myRawString = rawStringInit;
    
        myRawString = rawStringInit;

        //increment the length of myRawString
        //myRawString.lenght++;

    }

}