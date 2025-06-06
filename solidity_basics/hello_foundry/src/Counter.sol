// src/Counter.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Counter {
    uint256 public count;

    function increment() public {
        count += 1;
    }

    function reset() public {
        count = 0;
    }
}
