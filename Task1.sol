// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Task{
    //public access anywhere in blockchain inside or outside contract
    uint256 public uintVar;

//bool is private thus access only within contract
    bool private booool;

    //addr is internal means accessible by contract itself or by its child classes who inherit it
    address internal addrVal;

    //name public type and consant
    string public constant name = "Devanshu";

//setUint takes value of uint256 and return uint 256
    function setUint(uint256 _value) public returns(uint256){
        uintVar = _value;
        return uintVar;
    } 
    //getuint return the value of uintVar and view means only viewable fiunciton 
    function getUint() public view returns(uint256){
        return uintVar;
    }
    function setBool(bool _value) public returns(bool){
        booool = _value;
        return booool;
    }

    function getBool() public view returns (bool){
        return booool;

    }
    function setAddr(address _value) public returns(address){
        addrVal = _value;
        return addrVal;
    }
    function getAddr() public view returns(address){
        return addrVal;
    }
    //public -- to access from outside contract and pure-- bcoz it does not modify any value being constant
    function getString() public pure returns(string memory){
        return name;
    }

}
