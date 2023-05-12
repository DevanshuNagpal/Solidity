// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract Array{
//initialization

    //dynamic array
    uint[] public nums = [1,2,3 ];
    //fixed size arary
    uint[3] public numsFixed = [4,5,6];


//operations on array
//insert(push) get update delete pop length

    function examples() external{
        nums.push(4); //[1,2,3,4]
        // uint x = nums[1];//get the first element from nums aray
        
        nums[2] = 777;//[1,2,777,4]

        delete nums[1];//[1,0,777,4]
        
        nums.pop();//[1,0,777]
        // uint len = nums.length;

        //create array in memory
        uint[] memory a = new uint[](5);
        a[1] = 123;

    }
    function returnArray() external view returns(uint[] memory){
        return nums;
    }  




}
