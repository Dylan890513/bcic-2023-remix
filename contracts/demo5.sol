// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;
pragma experimental ABIEncoderV2;

contract demo5 {
    struct Course{
        string id;
        string name;
        uint duration;
    }
    Course currentCourse;
    function setCourse() public  {
        currentCourse = Course("POOP","OOP",35);
    }
    function getCourseId()public view returns (string memory){
        return currentCourse.id;
    }
    function getCourse()public view returns (Course memory) {
        return currentCourse;
    }
    function getCourseId2()public view returns (string memory){
        return currentCourse.id;
    }
    
}