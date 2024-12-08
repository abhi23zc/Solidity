// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

library fun {
    function add() public pure returns  (uint){
        return 1+2;
    }
}

contract main {
    function call() public pure returns (uint){
        return fun.add();
    }
}