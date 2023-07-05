# ERC20 Contracts

This directory contains three contracts: `ERC20Basic.sol`, `ERC20BasicRoles.sol` and `ERC20Advanced.sol`. These contracts are designed to facilitate the creation and management of ERC20 tokens. They provide role-based access control and minting mechanisms.

These contracts are robust solutions for projects looking to implement a token mechanism in an efficient and secure manner. However, they should be thoroughly tested and audited before use in a production environment.

## ERC20Basic.sol

The `ERC20Basic.sol` contract is a simpler version that allows for basic minting of tokens. It maintains a token counter to keep track of the total supply of tokens. The contract allows for minting of tokens by any address, with checks for minting status, minting price, and maximum supply.

### Overview

The contract uses the OpenZeppelin contracts for `ERC20` (an interface for ERC20 tokens) and `Ownable` (for basic access control).

The contract has several key features:

- **Token Contract**: The contract interacts with an ERC20 token contract, which is specified at the time of contract deployment.
- **Token Minting**: The contract allows for minting of tokens by any address, with checks for minting status, minting price, and maximum supply.

## ERC20BasicRoles.sol

The `ERC20BasicRoles.sol` contract extends the functionality of the basic ERC20 contract by adding role-based access control. It defines two roles, `ADMIN` and `MINTER`, which have permissions to perform certain actions such as minting tokens and setting various parameters.

### Overview

The contract uses the OpenZeppelin contracts for `ERC20` (an interface for ERC20 tokens), `AccessControl` (for role-based access control), and `Ownable` (for basic access control).

The contract has several key features:

- **Roles**: The contract defines two roles, `ADMIN` and `MINTER`, which have permissions to perform certain actions.
- **Token Contract**: The contract interacts with an ERC20 token contract, which is specified at the time of contract deployment.
- **Token Minting**: The contract allows for minting of tokens by any address, with checks for minting status, minting price, and maximum supply.

## ERC20Advanced.sol

The `ERC20Advanced.sol` contract extends the functionality of the basic ERC20 contract by adding more complex features such as a token counter, minting price, minting status, and maximum supply. It also includes functions to withdraw native tokens (e.g., Ether) and other ERC20 tokens from the contract.

### Overview

The contract uses the OpenZeppelin contracts for `ERC20` (an interface for ERC20 tokens), `AccessControl` (for role-based access control), and `IERC20` (for interacting with other ERC20 tokens).

The contract has several key features:

- **Token Contract**: The contract interacts with an ERC20 token contract, which is specified at the time of contract deployment.
- **Token Minting**: The contract allows for minting of tokens by any address, with checks for minting status, minting price, and maximum supply.
- **Token Withdrawal**: The contract allows for withdrawal of native tokens and other ERC20 tokens from the contract by administrators.
- **Roles**: The contract defines two roles, `ADMIN` and `MINTER`, which have permissions to perform certain actions.


## Usage

To use these contracts, you would need to deploy them on the Ethereum network, specifying the token contract. Once deployed, any address can mint tokens. Administrators can enable or disable minting and set various parameters.