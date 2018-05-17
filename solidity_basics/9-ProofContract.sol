pragma solidity ^0.4.22;

contract Proof{

    struct FileDetails
    {
        uint timestamp;
        string owner;
    }

    mapping (string => FileDetails) files;

    event logFileAddedStatus(bool status, uint timestamp, string owner, string fileHash);

    function set(string _owner, string _fileHash) public {
        
        if(files[_fileHash].timestamp == 0){
            files[_fileHash] = FileDetails(block.timestamp,_owner);
            emit logFileAddedStatus(true,block.timestamp,_owner,_fileHash);
        }
        else{
            emit logFileAddedStatus(false, block.timestamp,_owner,_fileHash);
        }
    }

    function get(string _fileHash) public view returns(uint timestamp, string owner) {
        return (files[_fileHash].timestamp, files[_fileHash].owner);
    }

}