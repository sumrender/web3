// SPDX-License-Identifier: MIT

pragma solidity 0.8.8; // compiler version
// can use ^0.8.7 or >= ver < 

contract SimpleStorage {

    // simple first test contract!

    // If not initialized, it is initialized to 0 by default
    uint256 favNumber = 100; 

    function setFavNumber(uint256 num) public {
        favNumber = num;
    }

    function retrieve() public view returns (uint256){
        return favNumber;
    }
}