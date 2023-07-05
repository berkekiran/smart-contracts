# Pool Contracts

This directory contains three contracts: `PoolBasic.sol`, `PoolBasicRoles.sol` and `PoolAdvanced.sol`. These contracts are designed to facilitate the creation and management of a pool of ERC20 tokens. They provide role-based access control, allowing for specific addresses to have administrative or depositor roles. Administrators have the ability to enable or disable the depositing and withdrawing of tokens, and to withdraw tokens from the contract. Depositors are allowed to deposit tokens into the pool.

These contracts are robust solutions for projects looking to create a token pool in an efficient and secure manner. However, they should be thoroughly tested and audited before use in a production environment.

## PoolBasic.sol

The `PoolBasic.sol` contract is a simpler version that allows for basic depositing and withdrawing of tokens from the pool. It maintains a pool balance, which tracks the total amount of tokens in the pool. The contract allows for depositing of tokens into the pool and withdrawing of tokens from the pool.

### Overview

The contract uses the OpenZeppelin contracts for `IERC20` (an interface for ERC20 tokens) and `AccessControl` (for role-based access control).

The contract has several key features:

- **Roles**: The contract defines two roles, `ADMIN` and `DEPOSITOR`, which have permissions to perform certain actions such as depositing tokens and enabling/disabling depositing and withdrawing.
- **Token Contract**: The contract interacts with an ERC20 token contract, which is specified at the time of contract deployment.
- **Pool Balance**: The contract maintains a pool balance, which tracks the total amount of tokens in the pool.
- **Depositing and Withdrawing**: The contract allows for depositing of tokens into the pool by administrators and authorized depositors, and withdrawing of tokens from the pool by administrators.
- **Withdrawal**: The contract allows for withdrawal of tokens and native tokens (e.g., Ether) from the contract by administrators.

## PoolBasicRoles.sol

The `PoolBasicRoles.sol` contract extends the functionality of the basic pool contract by adding role-based access control. It defines two roles, `ADMIN` and `DEPOSITOR`, which havepermissions to perform certain actions such as depositing tokens and enabling/disabling depositing and withdrawing.

### Overview

The contract uses the OpenZeppelin contracts for `IERC20` (an interface for ERC20 tokens) and `AccessControl` (for role-based access control).

The contract has several key features:

- **Roles**: The contract defines two roles, `ADMIN` and `DEPOSITOR`, which have permissions to perform certain actions such as depositing tokens and enabling/disabling depositing and withdrawing.
- **Token Contract**: The contract interacts with an ERC20 token contract, which is specified at the time of contract deployment.
- **Pool Balance**: The contract maintains a pool balance, which tracks the total amount of tokens in the pool.
- **Depositing and Withdrawing**: The contract allows for depositing of tokens into the pool by administrators and authorized depositors, and withdrawing of tokens from the pool by administrators.
- **Withdrawal**: The contract allows for withdrawal of tokens and native tokens (e.g., Ether) from the contract by administrators.

## PoolAdvanced.sol

The `PoolAdvanced.sol` contract extends the functionality of the basic pool contract by adding more complex features such as a locking pool, which tracks the total amount of tokens locked, the balance of tokens in the pool, and the amount of tokens locked per address. It also allows for locking of tokens by administrators, unlocking of tokens by administrators, and claiming of tokens by the addresses for which tokens have been locked.

### Overview

The contract uses the OpenZeppelin contracts for `IERC20` (an interface for ERC20 tokens) and `AccessControl` (for role-based access control).

The contract has several key features:

- **Roles**: The contract defines two roles, `ADMIN` and `DEPOSITOR`, which have permissions to perform certain actions such as depositing tokens and enabling/disabling depositing and withdrawing.
- **Token Contract**: The contract interacts with an ERC20 token contract, which is specified at the time of contract deployment.
- **Locking Pool**: The contract maintains a locking pool, which tracks the total amount of tokens locked, the balance of tokens in the pool, and the amount of tokens locked per address.
- **Locking, Unlocking, and Claiming**: The contract allows for locking of tokens by administrators, unlocking of tokens by administrators, and claiming of tokens by the addresses for which tokens have been locked.
- **Withdrawal**: The contract allows for withdrawal of tokens and native tokens (e.g., Ether) from the contract by administrators.

## Usage

To use these contracts, you would need to deploy them on the Ethereum network, specifying the token contract and the depositor address.

Once deployed, administrators and authorized depositors can deposit tokens into the pool. Administrators can withdraw tokens from the pool and also withdraw tokens and native tokens from the contract.

Please note that these contracts should be used as a reference and should be thoroughly tested and audited before use in a production environment.
