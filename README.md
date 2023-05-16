# Assessment
This is a smart contract for the custom token called "Firefly" with the symbol "Fire". It allows for minting and burning of tokens.

## Description
The above program is a smart contract written in Solidity for the ERC20 token called "Firefly" with the symbol "Fire". It defines a mapping variable that keeps track of the balance of each address holding the token and two functions: mint and burn.

The mint function allows the contract owner to mint new tokens and assign them to a specific address, increasing the total supply and balance of the specified address by the _value amount.

The burn function allows the contract owner to burn tokens held by a specific address, decreasing the total supply and balance of the specified address by the _value amount, but only if the balance of the specified address is greater than or equal to _value.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Assesment.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyToken {

    // public variables here
    string public tokenName = "Firefly";
    string public tokenAbbrv = "Fire";
    uint public totalSupply = 0;
    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint(address _address,uint _value)public{
       totalSupply+= _value;
       balances[_address] += _value;

    } 


    // burn function
   function burn(address _address,uint _value)public{
      if(balances[_address] >= _value){
         totalSupply -= _value;
         balances[_address] -= _value;
    }

   } 

}


```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile Assesment.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Assesment" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by placing the arguments in mint and burn functions. You can even see value of balance and all the variables.
## Authors

Devanshu   
[@Devanshu_Nagpal]([https://twitter.com/Devanshu_Nagpal])


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
