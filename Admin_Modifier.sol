// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract AdminOnly{
    address private admin;
    uint private randomValue;
    address payable public owner;

     constructor(){
        admin = msg.sender;
        owner = payable(msg.sender);

     }
     modifier onlyAdmin(){
         require(msg.sender == admin,"Only the admin can access this");
         _;
     }

    function isAdmin() public view returns(bool){
        return msg.sender == admin;

    }
    function adminFunction() external view onlyAdmin returns(uint){
        //function accessible only by admin 
        return address(this).balance;

        
    }
    function deposit () external payable {}

}