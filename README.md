# MyToken Smart Contract(ETH Proof Final Project)

This repository contains the `myToken` smart contract for the ETH-Proof Final Project Assessment. The contract implements a simple token with minting and burning functionalities.

## Table of Contents

- [Introduction](#introduction)
- [Contract Details](#contract-details)
  - [Public Variables](#public-variables)
  - [Mappings](#mappings)
  - [Functions](#functions)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Deployment](#deployment)
  - [Usage](#usage)
- [License](#license)

## Introduction

The `myToken` smart contract allows for the creation and management of a custom token. The contract includes functionalities to mint new tokens and burn existing tokens, while keeping track of the total supply and individual balances.

## Contract Details

### Public Variables

- `string public tokenName = "DIVYANSH";`
  - Stores the name of the token.
- `string public tokenAbbrevation = "DIV";`
  - Stores the abbreviation of the token.
- `uint public totalSupply = 0;`
  - Stores the total supply of the token, initially set to zero.

### Mappings

- `mapping(address => uint) public balances;`
  - Maps addresses to their respective token balances.

### Functions

- `function minting(address _address, uint _value) public`
  - Mints new tokens.
  - Parameters:
    - `_address`: The address to receive the minted tokens.
    - `_value`: The number of tokens to mint.
  - Increases the `totalSupply` by `_value` and updates the balance of `_address`.

- `function burning(address _address, uint _value) public`
  - Burns existing tokens.
  - Parameters:
    - `_address`: The address from which tokens will be burned.
    - `_value`: The number of tokens to burn.
  - Checks if the balance of `_address` is greater than `_value`.
  - Decreases the `totalSupply` by `_value` and updates the balance of `_address`.

## Getting Started

### Prerequisites

- [Solidity ^0.8.18](https://soliditylang.org/)
- [Remix IDE](https://remix.ethereum.org/) or any Ethereum development environment

### Deployment

1. Open the `myToken` contract in Remix IDE or your preferred development environment.
2. Compile the contract using the Solidity compiler version ^0.8.18.
3. Deploy the contract to a local Ethereum network or any test network.

### Usage

1. **Minting Tokens**
   - Call the `minting` function with the desired address and amount of tokens to mint.
   - Example:
     ```solidity
     myToken.minting("0xYourAddress", 100);
     ```

2. **Burning Tokens**
   - Call the `burning` function with the desired address and amount of tokens to burn.
   - Example:
     ```solidity
     myToken.burning("0xYourAddress", 50);
     ```

3. **Checking Balances**
   - Use the `balances` mapping to check the balance of any address.
   - Example:
     ```solidity
     uint balance = myToken.balances("0xYourAddress");
     ```

4. **Checking Total Supply**
   - Use the `totalSupply` public variable to check the total supply of the token.
   - Example:
     ```solidity
     uint totalSupply = myToken.totalSupply();
     ```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
