// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Payment{
    address payable public owner;
    mapping(address =>uint) public balances;
    constructor(){
        owner = payable(msg.sender);

    }
    function deposit() external payable{}

    function getBalance() external view returns (uint){
        return address(this).balance;
    }
    function incrementBalance() external  {
        balances[msg.sender] += 500;
    }
    function multiplyValue(uint value, uint multiplier) external pure returns (uint) {
        return value * multiplier;
    }


}