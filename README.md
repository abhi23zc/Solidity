# Solidity Documentation

## Introduction

Solidity is a high-level programming language for writing smart contracts on Ethereum and other blockchain platforms. This documentation covers all essential concepts from **basic to advanced**, providing a comprehensive guide for developers to master Solidity. Each topic includes detailed explanations, original examples, and references to the official Solidity documentation when applicable.

---

## Table of Contents

1. [Getting Started](#getting-started)
2. [Basic Concepts](#basic-concepts)
   - [Variables and Types](#variables-and-types)
   - [Operators](#operators)
   - [Control Structures](#control-structures)
3. [Intermediate Concepts](#intermediate-concepts)
   - [Functions](#functions)
   - [Arrays and Mappings](#arrays-and-mappings)
   - [Structs and Enums](#structs-and-enums)
4. [Advanced Concepts](#advanced-concepts)
   - [Inheritance and Interfaces](#inheritance-and-interfaces)
   - [Modifiers](#modifiers)
   - [Events](#events)
   - [Libraries](#libraries)
5. [Special Features](#special-features)
   - [Payable Functions](#payable-functions)
   - [Error Handling](#error-handling)
   - [Hashing and Cryptography](#hashing-and-cryptography)
6. [Best Practices](#best-practices)
7. [Conclusion](#conclusion)

---

## Getting Started

To begin using Solidity, ensure you have the following installed:

1. **Node.js** and **npm** (for Truffle/Hardhat).
2. **Remix IDE** (for browser-based development).
3. **Metamask** (for testing with Ethereum networks).

Example:
```bash
npm install -g truffle
```

---

## Basic Concepts

### Variables and Types

**File**: `Variable_Types.sol`

Solidity supports various data types such as:
- **Boolean**
- **Integer**
- **String**
- **Address**
- **Fixed-size Arrays**

**Example:**
```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract Variables {
    bool public isActive = true;
    uint256 public count = 10;
    string public name = "Solidity";
    address public owner = 0x1234567890abcdef1234567890abcdef12345678;

    function updateCount(uint256 newCount) public {
        count = newCount;
    }
}
```

**Explanation:**
- The `bool` type is used for logical values.
- `uint256` represents a 256-bit unsigned integer.
- Strings and addresses are essential for contract metadata and interaction.

Reference: [Solidity Docs - Types](https://docs.soliditylang.org/en/latest/types.html)

---

### Operators

**File**: `Operators.sol`

Operators allow performing operations on data:
- Arithmetic Operators: `+`, `-`, `*`, `/`, `%`
- Logical Operators: `&&`, `||`, `!`
- Comparison Operators: `==`, `!=`, `<`, `>`, `<=`, `>=`

**Example:**
```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract Operators {
    uint public a = 5;
    uint public b = 3;

    function add() public view returns (uint) {
        return a + b; // Returns 8
    }

    function isEqual() public view returns (bool) {
        return a == b; // Returns false
    }
}
```

**Explanation:**
- Arithmetic operators perform mathematical calculations.
- Logical operators evaluate conditions and combine boolean expressions.

Reference: [Solidity Docs - Operators](https://docs.soliditylang.org/en/latest/types.html#operators)

---

### Control Structures

**File**: `Loop.sol`

Control structures include `if`, `else`, `for`, `while`, and `do-while` loops.

**Example:**
```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract ControlStructures {
    uint[] public numbers;

    function addEvenNumbers(uint limit) public {
        for (uint i = 0; i <= limit; i++) {
            if (i % 2 == 0) {
                numbers.push(i);
            }
        }
    }
}
```

**Explanation:**
- `for` loops iterate over a range, adding even numbers to an array.
- `if` conditions check divisibility.

Reference: [Solidity Docs - Control Structures](https://docs.soliditylang.org/en/latest/control-structures.html)

---

## Intermediate Concepts

### Functions

**File**: `Functions.sol`

Functions encapsulate logic within contracts. Solidity supports:
- Public/Private Functions
- Pure/View/Payable Functions

**Example:**
```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract Functions {
    uint256 public val = 4;

    function getDouble() public view returns (uint256) {
        return val * 2;
    }

    function updateValue(uint256 newValue) public {
        val = newValue;
    }
}
```

**Explanation:**
- `view` functions only read state variables.
- Public functions can be called externally.

Reference: [Solidity Docs - Functions](https://docs.soliditylang.org/en/latest/contracts.html#functions)

---

### Arrays and Mappings

**File**: `Arrays.sol`, `Mapping.sol`

- **Arrays** are fixed or dynamic lists of elements.
- **Mappings** are key-value stores.

**Example:**
```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract ArrayAndMapping {
    uint[] public arr;
    mapping(address => uint) public balances;

    function addValue(uint value) public {
        arr.push(value);
        balances[msg.sender] += value;
    }
}
```

**Explanation:**
- Arrays store sequences of data.
- Mappings provide efficient key-based lookups.

Reference: [Solidity Docs - Arrays](https://docs.soliditylang.org/en/latest/types.html#arrays) and [Mappings](https://docs.soliditylang.org/en/latest/types.html#mapping-types)

---

## Advanced Concepts

### Inheritance and Interfaces

**File**: `Inheritance.sol`, `Interfaces.sol`

Inheritance allows contracts to extend others, and interfaces define callable external methods.

**Example:**
```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

interface Base {
    function getValue() external view returns (uint);
}

contract Derived is Base {
    function getValue() public pure override returns (uint) {
        return 42;
    }
}
```

**Explanation:**
- Interfaces declare functions that must be implemented by derived contracts.
- Inheritance allows reuse of logic across contracts.

Reference: [Solidity Docs - Inheritance](https://docs.soliditylang.org/en/latest/contracts.html#inheritance)

---

### Modifiers

**File**: `Modifiers.sol`

Modifiers are used to add preconditions to functions.

**Example:**
```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract Modifiers {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    function restrictedAction() public onlyOwner {
        // Only owner can execute
    }
}
```

**Explanation:**
- Modifiers streamline reusable preconditions for functions.

Reference: [Solidity Docs - Function Modifiers](https://docs.soliditylang.org/en/latest/contracts.html#function-modifiers)

---

## Special Features

### Payable Functions

**File**: `Payable.sol`

Payable functions allow contracts to receive Ether.

**Example:**
```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract PayableExample {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function deposit() public payable {}

    function withdraw() public {
        owner.transfer(address(this).balance);
    }
}
```

**Explanation:**
- `payable` functions enable Ether transactions.
- Contracts can send or receive Ether using `transfer`.

Reference: [Solidity Docs - Payable](https://docs.soliditylang.org/en/latest/contracts.html#payable-functions)

---

## Best Practices

- Always use recent Solidity versions.
- Use descriptive variable and function names.
- Avoid excessive gas usage by optimizing logic.

---

## Conclusion

This documentation provides a roadmap for mastering Solidity. By studying these topics, referencing the official Solidity documentation, and practicing the code examples, developers can build robust smart contracts for decentralized applications.

