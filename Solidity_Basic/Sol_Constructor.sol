// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract Base {
    address public owner;
    uint public balance;
    constructor (uint _balance){
        owner = msg.sender;
        balance = _balance;
    }

}

contract Derived is Base{

    constructor() Base(20){

    }
}