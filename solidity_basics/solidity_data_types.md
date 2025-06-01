# Solidity Data Types Overview

Solidity provides several data types categorized into **value types** and **reference types**. This document introduces these types with examples.

---

## 📌 1. Value Types

Value types are copied when assigned to a new variable or passed to a function.

### 🔹 Boolean
```solidity
bool isActive = true;
```

### 🔹 Integer
- Signed: `int`, `int8`, ..., `int256`
- Unsigned: `uint`, `uint8`, ..., `uint256`

```solidity
int256 signedNumber = -123;
uint256 unsignedNumber = 456;
```

### 🔹 Address
Represents a 20-byte Ethereum address. Can be payable or non-payable.

```solidity
address user = 0x123...;
address payable wallet = payable(user);
```

### 🔹 Fixed-Size Byte Arrays
From `bytes1` to `bytes32`

```solidity
bytes32 hash = keccak256(abi.encodePacked("data"));
```

### 🔹 Enums
User-defined type for a group of named constants.

```solidity
enum Status { Pending, Shipped, Delivered }
Status public currentStatus;
```

### 🔹 Fixed-point (future)
Fixed-point types (`fixed`, `ufixed`) are reserved but not yet implemented.

---

## 📌 2. Reference Types

Reference types store the location of the data (in memory, storage, or calldata).

### 🔹 Dynamic Byte Array
```solidity
bytes data = "Hello";
```

### 🔹 Strings
UTF-8 encoded dynamic-size text data

```solidity
string name = "Solidity";
```

### 🔹 Arrays

#### Static Array
```solidity
uint[3] fixedArray = [1, 2, 3];
```

#### Dynamic Array
```solidity
uint[] dynamicArray = [1, 2, 3];
```

### 🔹 Structs
Custom complex types made of other types.

```solidity
struct Product {
    string name;
    uint price;
}
```

### 🔹 Mappings
Key-value store. Cannot be iterated directly.

```solidity
mapping(address => uint256) public balances;
```

---

## 📌 3. Special Types

### 🔹 `var`
- Automatically infers the type from the assignment (only within functions).

### 🔹 `function`
- Can define and pass function types.

```solidity
function(uint, uint) external pure returns (uint) addFunc;
```

---

## ✅ Summary Table

| Type Category   | Type Example           | Description                          |
|-----------------|------------------------|--------------------------------------|
| Value           | `uint`, `bool`, `int`  | Primitive copy-on-write types        |
| Address         | `address payable`      | 20-byte address                      |
| Fixed Byte      | `bytes1` ~ `bytes32`   | Fixed-size binary data               |
| Enum            | `enum Status`          | Named integer constants              |
| Reference       | `string`, `bytes`      | Stored in memory/storage             |
| Array           | `uint[]`, `uint[3]`    | Fixed/dynamic size collections       |
| Struct          | `struct {...}`         | Composite user-defined types         |
| Mapping         | `mapping(...)`         | Hash map (key-value store)           |

---

_Last updated: 2025-05-15_
