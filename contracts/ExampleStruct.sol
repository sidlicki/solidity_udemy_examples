// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Wallet {

    // address sender;
    // uint valueSent;

    
    // function payContract() public payable {
    //     sender = msg.sender;
    //     valueSent = msg.value;
    // }

    PaymentReceived public payment;

    function payContract() public payable {
        payment = new PaymentReceived(msg.sender, msg.value);
    }


}

contract PaymentReceived {
    address public from;
    uint public amount;

    constructor(address _from, uint _amount) {
        from = _from;
        amount = _amount;
    }
}

// 

contract Wallet2{

    struct PaymentReceivedStruct{
        address from;
        uint amount;

    }

    PaymentReceivedStruct public payment;

    function payContract() public  payable {
        // payment = PaymentReceivedStruct(msg.sender, msg.value);
        payment.from = msg.sender;
        payment.amount = msg.value;
    }
}