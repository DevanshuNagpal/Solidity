// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract func{
    function add(uint x,uint y) external pure returns(uint){
        return x+y;
    } 

function sub(uint x,uint y) external pure returns(uint){
        if(x>y){

        return x-y;
        }
        else{
            return y-x;
        }
    } 
    function mul(uint x,uint y) external pure returns(uint){
        return x*y;
    } 
    function div(uint x,uint y) external pure returns(uint){
        if(y==0){
            return 0;
        }
        return x/y;
    } 

}