# Airdrop Contract

The `Airdrop.sol` contract is designed to facilitate the airdropping of ERC20 tokens to a predefined list of addresses. The list of addresses is verified using a Merkle root, ensuring that only the intended recipients can claim the airdropped tokens. 

The contract provides role-based access control, allowing for specific addresses to have administrative or depositor roles. Administrators have the ability to enable or disable the claiming and depositing of tokens, change the airdrop amount per address, and withdraw tokens from the contract. Depositors are allowed to deposit tokens into the airdrop pool.

This contract is a robust solution for projects looking to distribute tokens to a large number of addresses in an efficient and secure manner. However, it should be thoroughly tested and audited before use in a production environment.

## Overview

The contract uses the OpenZeppelin contracts for `IERC20` (an interface for ERC20 tokens), `AccessControl` (for role-based access control), and `MerkleProof` (for verifying the inclusion of elements in a Merkle tree).

The contract has several key features:

- **Roles**: The contract defines two roles, `ADMIN` and `DEPOSITOR`, which have permissions to perform certain actions such as depositing tokens and enabling/disabling claiming and depositing.
- **Token Contract**: The contract interacts with an ERC20 token contract, which is specified at the time of contract deployment.
- **Merkle Root**: The contract uses a Merkle root to verify the inclusion of addresses in the airdrop list.
- **Airdrop Pool**: The contract maintains an airdrop pool, which tracks the total amount of tokens allocated for the airdrop, the balance of tokens in the pool, and the amount of tokens allocated per address.
- **Claiming and Depositing**: The contract allows for claiming of tokens by addresses included in the airdrop list and depositing of tokens into the airdrop pool by authorized addresses.
- **Withdrawal**: The contract allows for withdrawal of tokens and native tokens (e.g., Ether) from the contract by administrators.

## Usage

To use this contract, you would need to deploy it on the Ethereum network, specifying the token contract, the depositor address, the initial Merkle root, and the initial airdrop amount per address.

Once deployed, administrators and authorized depositors can deposit tokens into the airdrop pool. Addresses included in the airdrop list can claim their allocated tokens from the pool. Administrators can also withdraw tokens and native tokens from the contract.

Please note that this contract should be used as a reference and should be thoroughly tested and audited before use in a production environment.
