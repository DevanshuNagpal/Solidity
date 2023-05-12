// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//this is a program for type unit conversions in ethereum cryptocurrency 
//wei -- smallest unit of ether 1 ether = 10^18 wei
//gwei -- gigawei -- 1 ether = 10^9 gwei , and 1 gwei = 10^9 wei


// here external payable recieve ether from user and the convert and return uint
//initially user msg.value takes input in wei already
contract Conversion{
    function convert() external payable returns (uint, uint ,uint){
        uint weiVal = msg.value;
        uint etherVal = weiVal/1 ether;
        uint gweiVal = weiVal/1 gwei;
        return(weiVal,etherVal,gweiVal); 

    }
}