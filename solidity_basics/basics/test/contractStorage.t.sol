// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/contractStorage.sol";

contract SimpleStorageTest is Test {
    contractStorage public store;

    function setUp() public {
        store = new contractStorage();
    }

    function testInitialContract() public {
        (
            uint256 contractNumber,
            address contractAddress,
            uint256 uploadDate,
            string memory contractName,
            address uploader,
            string memory description
        ) = store.getContract(0);

        assertEq(contractNumber, 1);
        assertEq(contractAddress, address(store));
        assertEq(contractName, "simpleStorage");
        assertEq(description, "Initial deployment of simpleStorage");
        assertEq(store.count(), 1);
    }

    function testIncrementAndStore() public {
        address dummy = address(0xBEEF);
        string memory name = "TestContract";
        string memory desc = "A test contract";

        vm.prank(dummy);
        store.incrementAndStore(name, desc);

        (
            uint256 contractNumber,
            address contractAddress,
            uint256 uploadDate,
            string memory contractName,
            address uploader,
            string memory description
        ) = store.getContract(1);

        assertEq(contractNumber, 2);
        assertEq(contractAddress, dummy);
        assertEq(contractName, name);
        assertEq(uploader, dummy);
        assertEq(description, desc);
        assertEq(store.count(), 2);
        assertTrue(uploadDate > 0);
    }

    function testMultipleIncrements() public {
        address dummy1 = address(0xBEEF);
        address dummy2 = address(0xCAFE);

        vm.prank(dummy1);
        store.incrementAndStore("A", "descA");

        vm.prank(dummy2);
        store.incrementAndStore("B", "descB");

        (
            uint256 contractNumber1,
            address contractAddress1,
            ,
            string memory contractName1,
            address uploader1,
            string memory description1
        ) = store.getContract(1);

        (
            uint256 contractNumber2,
            address contractAddress2,
            ,
            string memory contractName2,
            address uploader2,
            string memory description2
        ) = store.getContract(2);

        assertEq(contractNumber1, 2);
        assertEq(contractAddress1, dummy1);
        assertEq(contractName1, "A");
        assertEq(uploader1, dummy1);
        assertEq(description1, "descA");

        assertEq(contractNumber2, 3);
        assertEq(contractAddress2, dummy2);
        assertEq(contractName2, "B");
        assertEq(uploader2, dummy2);
        assertEq(description2, "descB");

        assertEq(store.count(), 3);
    }
}