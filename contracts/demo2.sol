// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;

contract demo2 {
    uint offset;
    constructor(uint initOffset) {
        offset = initOffset;
    }
    function setNewOffset(uint newOffset) public  {
        offset = newOffset;
    }
    function getResult(uint x) view public returns (string memory) {        
        return integerToString(x+offset);
    }
    function integerToString(uint i)private pure returns (string memory) {
        uint j=i;
        if (i==0) 
        {
            return "0";
        }
        uint len=0;
        while (j!=0) 
        {
            len++;
            j=j/10;
        }
        bytes memory result = new bytes(len);
        uint k =len-1;
        while (i!=0) 
        {
            result[k--] = bytes1(uint8(48+i%10));
            i/=10;
        }
        return string(result) ;
    }
}
