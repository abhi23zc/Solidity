// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract functions{

    uint public val = 4; //state variables

    function add() public pure returns (uint){
        uint val2 = 3;
        return val2;
    }

    function global() public view  returns (uint){
        return block.timestamp;

    }
}