// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract operators {

    uint public  val = 4;
    uint public a = 5;
    uint public b = 4;

    // function get() public {
    //     val =val+2;
    // }

     function get2() public view returns (uint){
        // return a&b;
        return a |b ;
    }
}