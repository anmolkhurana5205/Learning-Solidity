// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public  simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // we need address of the contract
        // and we need ABI - Application Binary Interface
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfget(uint256 _simpleStorageIndex) view public returns(uint) {
        return simpleStorageArray[_simpleStorageIndex].retriver();
    }

}