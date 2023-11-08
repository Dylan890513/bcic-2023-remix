// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;

contract demo4 {
    enum StarbuckSize{SHORT,TALL,GRANDE,VENTI,TRENTA}
    StarbuckSize size;
    StarbuckSize constant defaultSize = StarbuckSize.TALL;

    function getDefaultSize() public pure returns (StarbuckSize) {
        return defaultSize;
    }
    function geCurrentSize() public view returns (StarbuckSize) {
        return size;
    }
    function setVenti() public  {
        size = StarbuckSize.VENTI;
    }
}