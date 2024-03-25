// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleWrapAroind {

    uint256 public myUint;

    uint8 public myUint8 = 2**4;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function decrementUint() public {
        unchecked{
            myUint--;
        }
    }

    function incrementUint8() public {
        myUint++;
    }

}


//unchecked - dla wersji powyżej 0.8 - dla kółka