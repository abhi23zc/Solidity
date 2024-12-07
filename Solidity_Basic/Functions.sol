// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract functions {
    uint256 public val = 4;

    // function add() public view returns (uint) {
    //     // return 2+3;
    //     return val;
    // }

    // pure  --> state variable state, edit
    // view --> state variable view

function add() public view returns (uint256) {
        // val = 5;
        return val;
    }
}
