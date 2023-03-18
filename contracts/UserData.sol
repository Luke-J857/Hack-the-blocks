// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract UserData {
    string public author;
    address public owner;

    struct userData {
        uint256 age;
        string name;
    }

    mapping(address => userData) userDatum;

    constructor(string memory _author) payable {
        owner = msg.sender;
        author = _author;
    }

    function addUser(string memory _name, uint256 _age) public {
        userDatum[msg.sender].name = _name;
        userDatum[msg.sender].age = _age;
    }

}
