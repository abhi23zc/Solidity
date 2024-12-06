// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract array {

    uint [5] public arr =  [1,2,3,4];

    function getArr() public view returns (uint) {
        return arr.length;
    }

}