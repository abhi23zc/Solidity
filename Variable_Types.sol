// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract functions {

    uint public val = 4; //state variables

    function add() public view returns (address){
        // uint val2 = 3;
        // return val2;
        return msg.sender;
        // return msg.sender;

    }

    function global() public view  returns (uint){
        return block.timestamp;

    }
}