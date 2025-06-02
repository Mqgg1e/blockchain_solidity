// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";

interface IContractStorage {
    function getContract(uint256 index) external view returns (
        uint256 contractNumber,
        address contractAddress,
        uint256 uploadDate,
        string memory contractName,
        address uploader,
        string memory description
    );

    function count() external view returns (uint256);
}

contract ReadOnly is Script {
    function run() external {
        address contractAddress = 0xEDffF943D0eE80Ed943D4D90f76e12cFa8BC6939;

        IContractStorage contractStorage = IContractStorage(contractAddress);

        uint256 total = contractStorage.count();
        console.log("Total contracts stored:", total);

        (
            uint256 contractNumber,
            address cAddress,
            uint256 uploadDate,
            string memory contractName,
            address uploader,
            string memory description
        ) = contractStorage.getContract(0);

        console.log("Contract number:", contractNumber);
        console.log("Contract address:", cAddress);
        console.log("Upload date (timestamp):", uploadDate);
        console.log("Contract name:", contractName);
        console.log("Uploader address:", uploader);
        console.log("Description:", description);
    }
}
