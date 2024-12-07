// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract loops {

    uint public  a;
    uint public  b = 6;

    function get() public returns (uint)  {
        // while(a<b){
        //     a++;
        // }

        for(a = 0; a<5; a++){
            b+=1;
        }

        return b;
    }
}