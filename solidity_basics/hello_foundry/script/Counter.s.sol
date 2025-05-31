// script/DeployCounter.s.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Script.sol";
import "../src/Counter.sol";

contract DeployCounter is Script {
    function run() external {
        vm.startBroadcast();
        new Counter();
        vm.stopBroadcast();
    }
}
