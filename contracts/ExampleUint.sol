// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleUint{

    //  uint public myUint = 784523;
    uint256 public myUint; //0 - (2^256)-1

    uint8 public myUint8 = 250; // 0-255 ((2^8)-1)

    int public myInt = -10; //-2^128 - 2^128-1

    function setMyUint(uint _myUint) public {
    myUint = _myUint;
    }

    function incrementUint8() public {
        myUint8++;
    }

    function incrementInt() public {
        myInt++;
    }
}