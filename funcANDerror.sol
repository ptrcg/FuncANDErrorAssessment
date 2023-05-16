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
