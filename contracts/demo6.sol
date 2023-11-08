// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;

contract demo6 {
    mapping (address=>uint) public balance;
    mapping (string=>string) public phoneBook;
    mapping (string=>uint256) public payGrade;
    constructor() {
        balance[address(this)] = 10000;
    }

    function updateBalance(uint256 newBalance)public  {
        balance[msg.sender] = newBalance;
    }
    function getSenderBalance() public view returns(uint) {
        return balance[msg.sender];
    }
    function getContractBalance() public view returns(uint) {
        return balance[address(this)];
    }
    function addContractBalance1k()public {
        balance[address(this)]+=1000;
    }
    function setBalance(address addr,uint256 number) public  {
        balance[addr]=number;
    }
    function getBalance(address addr)public view returns (uint) {
        return balance[addr];
    }
    function setPayGrade(string memory user,string memory grade) public  {
        phoneBook[user] = grade;
    }
    function setPhoneBook(string memory name,string memory phoneNumber) public  {
        phoneBook[name] = phoneNumber;
    }
}