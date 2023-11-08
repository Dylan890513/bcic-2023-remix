// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;

contract demo3 {
    function getArraySize(uint len) pure public returns (uint){
        uint[] memory a = new uint256[](len);
        return a.length;
    }
    function getBytesSize(uint len) pure public returns (uint){
        bytes memory b = new bytes(len);
        return b.length;
    }
    function getByIndex(uint index) pure public returns (uint){
        uint[] memory a = new uint[](5);
        a[0]=1;
        a[1]=2;
        a[2]=3;
        a[3]=4;
        a[4]=5;
        return a[index];
    }
    uint[] members = new uint[](5);
    function initArray() public {
        members[0]=9;
        members[1]=8;
        members[2]=7;
        members[3]=6;
        members[4]=5;
    }
    function findByIndex(uint index) public returns (uint) {
        return members[index]--;
    }
    function pushMember(uint newMember) public returns (uint[] memory){
        members.push(newMember);
        return getMembers();
    }
    function getMembers()public view returns(uint[] memory) {
        return members;
    }
}