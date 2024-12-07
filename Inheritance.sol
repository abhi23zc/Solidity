// SPDX-License-Identifier: MIT
import 'hash.sol';
pragma solidity >= 0.7.0;

contract b is hashFunctions{
    
    function getPass () public  view  returns (bytes32){
        return password;
    }
}

// contract a{
//     uint public num = 1;

//     constructor(uint _num){
//         num = _num;
//     }
// }

// contract b is a{

//     constructor () a(10){

//     }

//     function get() public view returns (uint){
//         return num;
//     }
// }