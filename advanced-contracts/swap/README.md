# Swap Contracts

This directory contains four contracts: `SwapAdvanced.sol`, `SwapBasic.sol`, `SwapBasicRoles.sol`, and `SwapPool.sol`. These contracts are designed to facilitate the swapping of ERC20 tokens. They provide role-based access control, allowing for specific addresses to have administrative roles. Administrators have the ability to enable or disable the swapping of tokens, and to set the swap rate.

These contracts are robust solutions for projects looking to implement a swapping mechanism in an efficient and secure manner. However, they should be thoroughly tested and audited before use in a production environment.

## SwapBasic.sol

The `SwapBasic.sol` contract is a simpler version that allows for basic swapping of tokens. It maintains a balance of swapped tokens, which tracks the total amount of tokens swapped in the contract. The contract allows for swapping of tokens by any address.

### Overview

The contract uses the OpenZeppelin contracts for `IERC20` (an interface for ERC20 tokens) and `Ownable` (for basic access control).

The contract has several key features:

- **Token Contract**: The contract interacts with an ERC20 token contract, which is specified at the time of contract deployment.
- **Swapping**: The contract allows for swapping of tokens by any address.

## SwapBasicRoles.sol

The `SwapBasicRoles.sol` contract extends the functionality of the basic swap contract by adding role-based access control. It defines one role, `ADMIN`, which has permissions to perform certain actions such as enabling/disabling swapping, and setting the swap rate.

### Overview

The contract uses the OpenZeppelin contracts for `IERC20` (an interface for ERC20 tokens) and `AccessControl` (for role-based access control).

The contract has several key features:

- **Roles**: The contract defines one role, `ADMIN`, which has permissions to perform certain actions such as enabling/disabling swapping, and setting the swap rate.
- **Token Contract**: The contract interacts with an ERC20 token contract, which is specified at the time of contract deployment.
- **Swapping**: The contract allows for swapping of tokens by any address.
- **Swap Rate**: The contract maintains a swap rate, which can be set by an administrator.

## SwapAdvanced.sol

The `SwapAdvanced.sol` contract extends the functionality of the basic swap contract by adding more complex features such as a locking mechanism, which tracks the total amount of tokens swapped, the balance of tokens in the contract, and the amount of tokens swapped per address. It also allows for swapping of tokens by any address, and claiming of swap rewards by the swapper.

### Overview

The contract uses the OpenZeppelin contracts for `IERC20` (an interface for ERC20 tokens), `AccessControl` (for role-based access control), and `ReentrancyGuard` (to prevent reentrancy attacks).

The contract has several key features:

- **Roles**: The contract defines one role, `ADMIN`, which has permissions to perform certain actions such as enabling/disabling swapping and claiming swap rewards, and setting the swap rate.
- **Token Contract**: The contract interacts with an ERC20 token contract, which is specified at the time of contract deployment.
- **Swapping**: The contract allows for swapping of tokens by any address.
- **Claiming Rewards**: The contract allows for claiming of swap rewards by the swapper.
- **Swap Rate**: The contract maintains a swap rate, which can be set by an administrator.

## SwapPool.sol

The `SwapPool.sol` contract manages a pool of tokens for swapping. It keeps track of the total amount of tokens in the pool and allows for the swapping of tokens byany address.

### Overview

The contract uses the OpenZeppelin contracts for `IERC20` (an interface for ERC20 tokens) and `AccessControl` (for role-based access control).

The contract has several key features:

- **Roles**: The contract defines two roles, `ADMIN` and `SWAPCONTRACT`, which have permissions to perform certain actions such as depositing and withdrawing tokens.
- **Token Contract**: The contract interacts with an ERC20 token contract, which is specified at the time of contract deployment.
- **Pool Balances**: The contract maintains a mapping of pool balances for each token.
- **Depositing and Withdrawing**: The contract allows for depositing of tokens into the pool and withdrawing of tokens from the pool by administrators and authorized servers.
- **Deposit and Withdrawal Status**: The contract maintains a status for depositing and withdrawing, which can be enabled or disabled by an administrator.

## Usage

To use these contracts, you would need to deploy them on the Ethereum network, specifying the token contract.

Once deployed, administrators and authorized servers can deposit tokens into the pool and withdraw tokens from the pool. Administrators can enable or disable depositing and withdrawing, and set the swap rate.

Please note that these contracts should be used as a reference and should be thoroughly tested and audited before use in a production environment.
