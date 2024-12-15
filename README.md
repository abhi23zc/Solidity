# Solidity Code Snippets Documentation

## Introduction
This repository contains a collection of Solidity smart contract examples. Each file demonstrates specific concepts and functionalities within the Solidity programming language. The documentation provides detailed explanations and code snippets for easy understanding.

---

## Table of Contents
1. [Abstract Functions](#abstract-functions)
2. [Hashing](#hashing)
3. [Inheritance](#inheritance)
4. [Interfaces](#interfaces)
5. [Libraries](#libraries)
6. [Units and Global Variables](#units-and-global-variables)
7. [Virtual and Override](#virtual-and-override)

---

## Abstract Functions
File: `Abstract-func.sol`

Abstract contracts act as base contracts and cannot be deployed directly. They are used to define function signatures without implementations.

### Code Snippet
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract AbstractBase {
    function abstractFunc() public virtual;
}

contract Derived is AbstractBase {
    function abstractFunc() public override {
        // Implementation here
    }
}
```

### Key Points
- Use `abstract` keyword to define abstract contracts.
- Derived contracts must implement all abstract functions.

---

## Hashing
File: `Hash.sol`

Hashing is used for cryptographic functions, such as hashing data for security or creating unique identifiers.

### Code Snippet
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Hashing {
    function hashData(string memory data) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(data));
    }
}
```

### Key Points
- Uses `keccak256` for hashing.
- Combine data using `abi.encodePacked`.

---

## Inheritance
File: `Inheritance.sol`

Solidity supports single and multiple inheritance, allowing contracts to inherit properties and methods from parent contracts.

### Code Snippet
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Parent {
    function greet() public pure returns (string memory) {
        return "Hello from Parent";
    }
}

contract Child is Parent {
    function greetChild() public pure returns (string memory) {
        return "Hello from Child";
    }
}
```

### Key Points
- Use `is` keyword to inherit.
- Parent methods can be overridden if marked as `virtual`.

---

## Interfaces
File: `Interfaces.sol`

Interfaces define the structure of a contract without providing implementations. They are essential for creating modular and reusable code.

### Code Snippet
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IExample {
    function doSomething() external;
}

contract Implementer is IExample {
    function doSomething() external override {
        // Implementation here
    }
}
```

### Key Points
- Interface functions are `external`.
- Use `override` in implementation.

---

## Libraries
File: `Lib.sol`

Libraries are reusable pieces of code that can be called by contracts.

### Code Snippet
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library MathLib {
    function add(uint a, uint b) internal pure returns (uint) {
        return a + b;
    }
}

contract UseLib {
    using MathLib for uint;

    function calculate(uint a, uint b) public pure returns (uint) {
        return a.add(b);
    }
}
```

### Key Points
- Use `library` keyword.
- Can be called directly or with `using for`.

---

## Units and Global Variables
File: `Units.sol`

Solidity provides various units (e.g., wei, gwei) and global variables (e.g., `msg.sender`, `block.timestamp`).

### Code Snippet
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Units {
    function getTimestamp() public view returns (uint) {
        return block.timestamp;
    }

    function convertToWei(uint etherAmount) public pure returns (uint) {
        return etherAmount * 1 ether;
    }
}
```

### Key Points
- Use `block.timestamp` for the current block's timestamp.
- Use `ether` and `wei` for conversions.

---

## Virtual and Override
File: `Virtual-Override.sol`

`virtual` and `override` are used to modify and extend parent contract functions.

### Code Snippet
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Base {
    function greet() public virtual pure returns (string memory) {
        return "Hello from Base";
    }
}

contract Derived is Base {
    function greet() public override pure returns (string memory) {
        return "Hello from Derived";
    }
}
```

### Key Points
- Use `virtual` to allow overriding.
- Use `override` to override parent methods.

---

## How to Run
1. Clone the repository: `git clone https://github.com/abhi23zc/Solidity`
2. Install a Solidity development environment like [Remix](https://remix.ethereum.org/).
3. Open the `.sol` files in Remix and deploy the contracts.

---

## License
This project is licensed under the MIT License. See the `LICENSE` file for details.

