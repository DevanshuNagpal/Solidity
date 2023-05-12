// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract Gas{
    // function testGasRefund() public  returns(uint){
    //     return tx.gasprice;

    // }
    uint public i  =0;
    function forever() public{
        while(true){
            i++;
        }
    }
}
