# Lock

The `Lock.sol` contract is designed to facilitate the locking of ERC20 tokens for a predefined period of time. The contract provides role-based access control, allowing for specific addresses to have administrative roles. Administrators have the ability to enable or disable the locking, unlocking, and claiming of tokens.

This contract is a robust solution for projects looking to lock tokens for a certain period of time in an efficient and secure manner. However, it should be thoroughly tested and audited before use in a production environment.

## Overview

The contract uses the OpenZeppelin contracts for `IERC20` (an interface for ERC20 tokens) and `AccessControl` (for role-based access control).

The contract has several key features:

- **Roles**: The contract defines an `ADMIN` role, which has permissions to perform certain actions such as enabling/disabling locking, unlocking, and claiming of tokens.
- **Token Contract**: The contract interacts with an ERC20 token contract, which is specified at the time of contract deployment.
- **Locking Pool**: The contract maintains a locking pool, which tracks the total amount of tokens locked, the balance of tokens in the pool, and the amount of tokens locked per address.
- **Locking, Unlocking, and Claiming**: The contract allows for locking of tokens by administrators, unlocking of tokens by administrators, and claiming of tokens by the addresses for which tokens have been locked.
- **Withdrawal**: The contract allows for withdrawal of tokens and native tokens (e.g., Ether) from the contract by administrators.

## Usage

To use this contract, you would need to deploy it on the Ethereum network, specifying the token contract.

Once deployed, administrators can lock tokens for addresses. When the tokens are unlocked by an administrator, the addresses for which tokens have been locked can claim their tokens. Administrators can also withdraw tokens and native tokens from the contract.

Please note that this contract should be used as a reference and should be thoroughly tested and audited before use in a production environment.
