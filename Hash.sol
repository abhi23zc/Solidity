// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract hashFunctions {

    bytes32 public password;

    // function genPass(string memory _pass) public pure returns(bytes32){
    //     return keccak256(abi.encodePacked(_pass));
    // }

    function genPass(string memory _pass) public {
        password = keccak256(abi.encodePacked(_pass));
    }
    function sendMoney(string memory _pass) view public{
        
        require(keccak256(abi.encodePacked(_pass)) == password, "Wrong Password");
        
    }
}