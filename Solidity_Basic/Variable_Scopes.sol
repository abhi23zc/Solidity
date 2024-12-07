// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract varscope {
                           
    uint public val = 4;  // public state variable

    uint internal  val2 = 10;  // Internal Variable

    uint private  val3 = 50; // Private variable0

    function get() public view returns (uint){
        return val2;
    }

}

contract varscope2 is varscope{

    varscope newvar = new varscope();

    function get2 () public view  returns  (uint){
        // return 5;
        return newvar.val();
    }
}