// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleMsgSender {

    address public someAddress;

    function updateSomeAddress() public {
        someAddress = msg.sender; //acc uruchamia contract -> msg.sender -> adres uruchamiancego
    }

}