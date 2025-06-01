// test/Counter.t.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    Counter counter;

1    function setUp() public {
        counter = new Counter();
    }

    function testInitialValueIsZero() public {
        assertEq(counter.count(), 0);
    }

    function testIncrement() public {
        counter.increment();
        assertEq(counter.count(), 1);
    }

    function testReset() public {
        counter.increment();
        counter.reset();
        assertEq(counter.count(), 0);
    }
}
