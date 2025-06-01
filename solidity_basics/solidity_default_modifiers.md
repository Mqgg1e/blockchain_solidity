# Solidity Default Modifiers Reference

This document provides a comprehensive overview of **default behaviors** in Solidity when **modifiers or keywords are omitted**.

---

## 📌 1. Function Visibility

Solidity **requires explicit visibility** for functions. If you do **not** specify a visibility modifier, the compiler will throw an **error**.

### ❌ Example (Compiler Error)
```solidity
function add(uint a, uint b) returns (uint) {
    return a + b;
}
```

### ✅ Correct Example
```solidity
function add(uint a, uint b) public pure returns (uint) {
    return a + b;
}
```

### 🔍 Summary:
| Modifier   | Meaning                              |
|------------|--------------------------------------|
| `public`   | Accessible externally and internally |
| `private`  | Accessible only within the contract  |
| `internal` | Accessible within contract & children|
| `external` | Accessible only externally           |

---

## 📌 2. State Variable Visibility

If **no visibility** is specified on a **state variable**, the default is:

### 🔸 `internal`

```solidity
uint x = 5; // Same as: internal uint x = 5;
```

---

## 📌 3. Data Location for Function Parameters

When passing **complex types** (`string`, `bytes`, `arrays`, `structs`):

- For **external/public functions** → default is `calldata`
- For **internal/private functions** → must **explicitly specify** `memory` or `storage`

### ✅ Example
```solidity
function setName(string memory _name) public {
    // Correct
}
```

---

## 📌 4. Data Location for Return Values

If the return value is a **reference type**, `memory` must be explicitly declared.

```solidity
function getName() public pure returns (string memory) {
    return "Solidity";
}
```

---

## 📌 5. Data Location for Local Variables

For local reference types (e.g., `string`, `bytes`, arrays, structs), **`memory`** is required:

```solidity
function example() public pure {
    string memory name = "Ethereum";
}
```

---

## 📌 6. Constants and Immutables

| Modifier     | Description                                              |
|--------------|----------------------------------------------------------|
| `constant`   | Value known at compile time; cannot be changed           |
| `immutable`  | Value set in the constructor; cannot be changed afterwards |

Default behavior: **Must be explicitly defined**.

---

## 📌 7. Storage Keyword for State Variables

For state variables declared in the contract:
- Default data location is **`storage`**
- You do **not** need to write `storage` explicitly for state variables

---

## 📌 8. Default Function Type: `view` / `pure` / `payable`

These are **not assumed by default**. If not specified:
- The function is considered **"non-view and non-pure"**
- It can modify or read state

```solidity
function read() public returns (uint) {
    return block.timestamp; // Allowed because no modifier implies read-write
}
```

Use `view`, `pure`, or `payable` **explicitly** when necessary.

---

## ✅ Summary Table

| Feature                          | Default Behavior or Requirement       |
|----------------------------------|----------------------------------------|
| Function Visibility              | ❌ Must be explicitly declared         |
| State Variable Visibility        | ✅ Defaults to `internal`             |
| Data Location (External Params)  | ✅ Defaults to `calldata`             |
| Data Location (Internal Params)  | ❌ Must declare `memory` or `storage` |
| Return Value Location (References)| ❌ Must declare `memory`              |
| Local Reference Variables        | ❌ Must declare `memory`              |
| State Variable Location          | ✅ Defaults to `storage`              |
| Constants & Immutables           | ❌ Must declare                        |
| Function Type (`view`, etc.)     | ❌ Must declare                        |

---

_Last updated: 2025-06-01_
