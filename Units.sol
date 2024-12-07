// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract uints {
    modifier amount() {
        require(msg.value > 1, "Value should be greater than 1");
        _;
    }

    // modifier amount() {
    //     require(msg.value > 1 ether, "Value should be greater than 1");
    //     _;
    // }

    function send() public payable amount {}
}
