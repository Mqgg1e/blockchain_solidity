// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract contractStorage {
    struct ContractUploaded {
        uint256 contractNumber;
        address contractAddress;
        uint256 uploadDate;      // block timestamp
        string  contractName;    // name of the contract
        address uploader;        // who called incrementAndStore
        string  description;     // optional description
    }

    ContractUploaded[] public contracts;
    uint256 public count;
    address public owner;

    // Modifier to restrict access
    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    // Constructor: register this contract as the first one
    constructor() {
        owner = msg.sender;
        count = 1;
        contracts.push(ContractUploaded({
            contractNumber: count,
            contractAddress: address(this),
            uploadDate: block.timestamp,
            contractName: "simpleStorage",
            uploader: msg.sender,
            description: "Initial deployment of simpleStorage"
        }));
    }

    // Only owner can increment and store
    function incrementAndStore(
        string memory contractName,
        string memory description
    ) public onlyOwner {
        count += 1;
        contracts.push(ContractUploaded({
            contractNumber: count,
            contractAddress: msg.sender,
            uploadDate: block.timestamp,
            contractName: contractName,
            uploader: msg.sender,
            description: description
        }));
    }

    // View function to get contract info by index
    function getContract(uint256 index) public view returns (
        uint256,
        address,
        uint256,
        string memory,
        address,
        string memory
    ) {
        ContractUploaded storage c = contracts[index];
        return (
            c.contractNumber,
            c.contractAddress,
            c.uploadDate,
            c.contractName,
            c.uploader,
            c.description
        );
    }
}
