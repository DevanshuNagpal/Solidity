// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//Mapping -- dictionar
//How to declare (simple nested)
//set get delete

//["alice","bob","charlie"]
// in maopping we will be able to find out in one lookup whether david is present or not 
//{"alice":true,"bob":true,"charlie":true}

contract Mapping{
    mapping(address => uint) public balances;//key is address and the value is uint make this mapping public and balances is the name of mapping giving the balance of each adress
    //nested mapping
    //mapping goes from addresss to other address and finally to boolean 
    //isfriend is the name of mapping 
    //tels whether address is a friend of anothger address 
    mapping(address => mapping(address => bool)) public isFriend;   
    
    //how to set get and delete elements from mapping 
    function examples() external {
    //set
        balances[msg.sender]= 123;
        //uint bal = balances[msg.sender];
        //uint bal2 = balances[address(1)];//we have not set balances of address 1 but we are able to accesss the values storded in balance 1
        //return default values ---0

        balances[msg.sender]+=345; //123 + 345
        //increment

        delete balances[msg.sender];//0




    }



}