// SPDX-License-Identifier: MIT
pragma solidity  0.8.15;

contract MappingStructExample{

    struct Transaction{
        uint amount;
        uint timestamp;
    }

    struct Balance {
        uint totalBalance;
        uint numDeposits;
        mapping (uint => Transaction)  deposits;
        uint numWithdraws;
        mapping (uint => Transaction) withdraws;
    }

    mapping(address => Balance) public  balances;

    function getDepositNum(address _from, uint _numDeposits) public view returns (Transaction memory){
        return balances[_from].deposits[_numDeposits];
    }

    function depositMoney() public payable {
        balances[msg.sender].totalBalance += msg.value;

        Transaction memory deposit = Transaction(msg.value, block.timestamp);
        balances[msg.sender].deposits[balances[msg.sender].numDeposits] = deposit;
        balances[msg.sender].numDeposits++;
    }

    function withdrawMoney(address payable _to, uint _amount) public {
        balances[msg.sender].totalBalance -= _amount;

        Transaction memory withdraw = Transaction(_amount, block.timestamp);
        balances[msg.sender].withdraws[balances[msg.sender].numWithdraws] = withdraw;
        balances[msg.sender].numWithdraws++;
        
        _to.transfer(_amount);
    }



}