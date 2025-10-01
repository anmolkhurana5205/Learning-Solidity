// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256 favNumber;

    mapping(string => uint256) public nameToFavNumber;
    // here all the possible keys (strings) are initially mapped to 0.

    People[] public people;
    struct People {
        uint256 favNumber;
        string name;
    }

    function store(uint _favNumber) public virtual {
        favNumber = _favNumber;
    }

    function retriver() public view returns(uint){
        return favNumber;
    }

    function addPerson(string memory _name, uint256 _favNumber) public{
        nameToFavNumber[_name] = _favNumber;
        people.push(People(_favNumber, _name));
    }
}