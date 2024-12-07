// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract mappings{

    mapping (address => uint) public balance;

    function setBalance(uint bal) public {
        balance[msg.sender] = bal;
    }

    function getBalance(address addresss) public view returns  (uint){

        return balance[addresss];
    }
}