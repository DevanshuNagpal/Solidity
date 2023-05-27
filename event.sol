// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract Event{
    //event declaration 
    //upto 3 parametrs can be indexed
    //indexed parameter is used thats why we may search it later in the log 
    //help you filter the logby indexed parameter

    event mssglog(address indexed sender, string message);
    event messg2();

    function test() public {
        emit mssglog(msg.sender, "Yeee haaaaw");
        emit mssglog(msg.sender, "Yeee haaaaaaaaaaaaaw");

        emit messg2();
    }
}