// SPDX-License-Identifier: MIT

pragma solidity 0.8.7; // compiler version

// can use ^0.8.7 or >= ver <

contract SimpleStorage {
    // simple first test contract!
    // http://127.0.0.1:7545

    uint256 favNumber = 100;

    function setFavNumber(uint256 num) public virtual {
        favNumber = num;
    }

    function retrieve() public view returns (uint256) {
        return favNumber;
    }
}