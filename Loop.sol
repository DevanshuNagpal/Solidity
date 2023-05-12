// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ForAndWhileLoop{
    
    function loops() external pure{
    uint i =0;
    for(; i< 10;i++){
        //code
        if(i==3){
            continue;

        }
        //more code
        if(i==5){

        break;
        }
    }
    while(true){
        i++;
    }
    
}
}