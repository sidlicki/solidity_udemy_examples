// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleConstructor {

    address public myAddress;


    constructor(address _someAddress) {

        myAddress = _someAddress;

    }

    function setMyAdress(address _myAdress) public {
        myAddress = _myAdress;
    }

    function setMyAdressToMsgSender() public {
        myAddress = msg.sender;
    }

}