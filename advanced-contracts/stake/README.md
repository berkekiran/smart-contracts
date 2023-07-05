# Stake Contracts

This directory contains four contracts: `StakeBasic.sol`, `StakeBasicRoles.sol`, `StakeAdvanced.sol` and `StakeRewardPool.sol`. These contracts are designed to facilitate the staking of ERC20 tokens. They provide role-based access control, allowing for specific addresses to have administrative roles. Administrators have the ability to enable or disable the staking of tokens, and to set the interest rate for staking rewards.

These contracts are robust solutions for projects looking to implement a staking mechanism in an efficient and secure manner. However, they should be thoroughly tested and audited before use in a production environment.

## StakeBasic.sol

The `StakeBasic.sol` contract is a simpler version that allows for basic staking and unstaking of tokens. It maintains a balance of staked tokens, which tracks the total amount of tokens staked in the contract. The contract allows for staking of tokens by any address and unstaking of tokens by the staker.

### Overview

The contract uses the OpenZeppelin contracts for `IERC20` (an interface for ERC20 tokens) and `Ownable` (for basic access control).

The contract has several key features:

- **Token Contract**: The contract interacts with an ERC20 token contract, which is specified at the time of contract deployment.
- **Staking and Unstaking**: The contract allows for staking of tokens by any address and unstaking of tokens by the staker.

## StakeBasicRoles.sol

The `StakeBasicRoles.sol` contract extends the functionality of the basic stake contract by adding role-based access control. It defines one role, `ADMIN`, which has permissions to perform certain actions such as enabling/disabling staking and unstaking, and setting the interest rate for staking rewards.

### Overview

The contract uses the OpenZeppelin contracts for `IERC20` (an interface for ERC20 tokens) and `AccessControl` (for role-based access control).

The contract has several key features:

- **Roles**: The contract defines one role, `ADMIN`, which has permissions to perform certain actions such as enabling/disabling staking and unstaking, and setting the interest rate for staking rewards.
- **Token Contract**:The contract interacts with an ERC20 token contract, which is specified at the time of contract deployment.
- **Staking and Unstaking**: The contract allows for staking of tokens by any address and unstaking of tokens by the staker.
- **Interest Rate**: The contract maintains an interest rate for staking rewards, which can be set by an administrator.

## StakeAdvanced.sol

The `StakeAdvanced.sol` contract extends the functionality of the basic stake contract by adding more complex features such as a locking mechanism, which tracks the total amount of tokens staked, the balance of tokens in the contract, and the amount of tokens staked per address. It also allows for staking of tokens by any address, unstaking of tokens by the staker, and claiming of staking rewards by the staker.

### Overview

The contract uses the OpenZeppelin contracts for `IERC20` (an interface for ERC20 tokens), `AccessControl` (for role-based access control), and `ReentrancyGuard` (to prevent reentrancy attacks).

The contract has several key features:

- **Roles**: The contract defines one role, `ADMIN`, which has permissions to perform certain actions such as enabling/disabling staking and unstaking, and setting the interest rate for staking rewards.
- **Token Contract**: The contract interacts with an ERC20 token contract, which is specified at the time of contract deployment.
- **Staking and Unstaking**: The contract allows for staking of tokens by any address and unstaking of tokens by the staker.
- **Claiming Rewards**: The contract allows for claiming of staking rewards by the staker.
- **Interest Rate**: The contract maintains an interest rate for staking rewards, which can be set by an administrator.

## StakeRewardPool.sol

The `StakeRewardPool.sol` contract manages a pool of tokens for staking rewards. It keeps track of the total amount of tokens in the pool and allows for the claiming of staking rewards by the staker.

### Overview

The contract uses the OpenZeppelin contracts for `IERC20` (an interface for ERC20 tokens) and `AccessControl` (for role-based access control).

The contract has several key features:

- **Roles**: The contract defines two roles, `ADMIN` and `STAKECONTRACT`, which have permissions to perform certain actions such as depositing and withdrawing tokens.
- **Token Contract**: The contract interacts with an ERC20 token contract, which is specified at the time of contract deployment.
- **Pool Balances**: The contract maintains a pool balance for tokens.
- **Depositing and Withdrawing**: The contract allows for depositing of tokens into the pool and withdrawing of tokens from the pool by administrators and authorized servers.
- **Deposit and Withdrawal Status**: The contract maintains a status for depositing and withdrawing, which can be enabled or disabled by an administrator.
- **Claiming Rewards**: The contract allows for claiming of staking rewards by the staker.

## Usage

To use these contracts, you would need to deploy them on the Ethereum network, specifying the token contract.

Once deployed, any address can stake tokens. The staker can unstake their tokens and claim their staking rewards. Administrators can enable or disable staking and unstaking, and set the interest rate for staking rewards.

Please note that these contracts should be used as a reference and should be thoroughly tested and audited before use in a production environment.
