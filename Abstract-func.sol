// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

abstract contract base {
    uint public  num;

    function call() public  pure returns (uint){
        return 1;
    }

    function fun1 () public virtual  pure returns (string memory);
}

contract main is base {
    function fun1() public  pure override  returns (string memory){
        return "Abhi";
    }

}
