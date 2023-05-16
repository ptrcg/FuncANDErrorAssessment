# Smart Contract Project
The purpose of this project is to develop a smart contract that showcases the implementation of the require(), assert(), and revert() statements. These statements are essential in Solidity for ensuring proper contract behavior, input validation, and handling of exceptional conditions.


## Description
The Smart Contract Project is a programming task that focuses on developing a smart contract using the Solidity programming language. The objective of this project is to implement the require(), assert(), and revert() statements within the smart contract.

By implementing these statements within the smart contract, you will ensure the contract's behavior aligns with the desired requirements, validate inputs, and handle exceptional scenarios appropriately.

Completing this project will enhance your understanding of Solidity programming, improve your ability to write secure and robust smart contracts, and demonstrate proficiency in using these essential statements.

## Getting Started
### Executing Program
* To execute this program, you may utilize Remix, which is an online Integrated Development Environment (IDE) for Solidity. To begin, navigate to the Remix website located at https://remix.ethereum.org/.

* After accessing the Remix website, you can initiate a new file by selecting the "+" symbol situated in the left-hand sidebar. Save the file with a .sol extension and then proceed to copy and paste the code given into the created file.
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExceptionExample {
    uint public value;

    function setValue(uint newValue) external {
        require(newValue > 0, "Value must be greater than zero"); // Use require() to validate a condition, and revert if it fails
        value = newValue;
    }

    function doubleValue() external {
        uint doubledValue = value * 2;
        assert(doubledValue > value); // Use assert() to check for invariants and throw an error if they are violated
        value = doubledValue;
    }

    function revertValue() external pure {
        revert("This function always reverts"); // Use revert() to explicitly revert the transaction with a custom error message
    }
}
```
* To compile the code, go to the "Solidity Compiler" tab located on the left-hand sidebar. Ensure that the "Compiler" option is set to a compatible version, such as "0.8.18", and then select the "Compile myToken.sol" button.

* Once the code has been compiled, navigate to the "Deploy & Run Transactions" tab on the left-hand sidebar to deploy the contract. From the dropdown menu, select the "myToken" contract and press the "Deploy" button.

* After the contract is deployed, you can input values at the "mint" and "burn" function and click transact. you can also check the balances by inputting the address you want to track and by calling it. Lastly, you can view the values of the totalSupply, tokenName, and tokenAbbrv by simply clicking on it.

## Author
Patricia Go
