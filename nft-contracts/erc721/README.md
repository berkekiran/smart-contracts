# ERC721 Contracts

This directory contains five contracts: `ERC721Basic.sol`, `ERC721BasicReveal.sol`  `ERC721Advanced.sol`, `ERC721AdvancedRoles.sol` and `ERC721AdvancedWhitelist.sol`. These contracts are designed to facilitate the creation and management of ERC721 tokens, also known as Non-Fungible Tokens (NFTs). They provide role-based access control, whitelist functionality, and reveal mechanisms.

These contracts are robust solutions for projects looking to implement an NFT mechanism in an efficient and secure manner. However, they should be thoroughly tested and audited before use in a production environment.

## ERC721Basic.sol

The `ERC721Basic.sol` contract is a simpler version that allows for basic minting of tokens. It maintains a token counter to keep track of the total supply of tokens. The contract allows for minting of tokens by any address, with checks for minting status, minting price, and maximum supply.

### Overview

The contract uses the OpenZeppelin contracts for `ERC721` (an interface for ERC721 tokens), `Counters` (for token counting), `Strings` (for string manipulation), and `Ownable` (for basic access control).

The contract has several key features:

- **Token Contract**: The contract interacts with an ERC721 token contract, which is specified at the time of contract deployment.
- **Token Minting**: The contract allows for minting of tokens by any address, with checks for minting status, minting price, and maximum supply.
- **Token Counter**: The contract maintains a token counter to keep track of the total supply of tokens.

## ERC721BasicReveal.sol

The `ERC721BasicReveal.sol` contract extends the functionality of the basic ERC721 contract by adding a reveal mechanism. It allows for revealing of tokens, with a hidden URI for tokens before they are revealed.

### Overview

The contract uses the OpenZeppelin contracts for `ERC721` (an interface for ERC721 tokens), `Counters` (for token counting), `Strings` (for string manipulation), and `Ownable` (for basic access control).

The contract has several key features:

- **Token Contract**: The contract interacts with an ERC721 token contract, which is specified at the time of contract deployment.
- **Token Minting**: The contract allows for minting of tokens by any address, with checks for minting status, minting price, and maximum supply.
- **Token Reveal**: The contract allows for revealing of tokens, with a hidden URI for tokens before they are revealed.
- **Token Counter**: The contract maintains a token counter to keep track of the total supply of tokens.

## ERC721Advanced.sol

The `ERC721Advanced.sol` contract extends the functionality of the basic ERC721 contract by adding more complex features such as a token counter, minting price, minting status, reveal status, and maximum supply.

### Overview

The contract uses the OpenZeppelin contracts for `ERC721` (an interface for ERC721 tokens), `Counters` (for token counting), and `Strings` (for string manipulation).

The contract has several key features:

- **Token Contract**: The contract interacts with an ERC721 token contract, which is specified at the time of contract deployment.
- **Token Minting**: The contract allows for minting of tokens by any address, with checks for minting status, minting price, and maximum supply.
- **Token Reveal**: The contract allows for revealing of tokens, with a hidden URI for tokens before they are revealed.
- **Token Counter**: The contract maintains a token counter to keep track of the total supply of tokens.

## ERC721AdvancedRoles.sol

The `ERC721AdvancedRoles.sol` contract extends the functionality of the advanced ERC721 contract by adding role-based access control. It defines two roles, `ADMIN` and `MINTER`, which have permissions to perform certain actions such as minting tokens, withdrawing contract balance, and setting various parameters.

### Overview

The contract uses the OpenZeppelin contracts for `ERC721` (an interface for ERC721 tokens), `Counters` (for token counting), `Strings` (for string manipulation), and `AccessControl` (for role-based access control).

The contract has several key features:

- **Roles**: The contract defines two roles, `ADMIN` and `MINTER`, which have permissions to perform certain actions.
- **Token Contract**: The contract interacts with an ERC721 token contract, which is specified at the time of contract deployment.
- **Token Minting**: The contract allows for minting of tokens by any address, with checks for minting status, minting price, and maximum supply.
- **Token Reveal**: The contract allows for revealing of tokens, with a hidden URI for tokens before they are revealed.
- **Token Counter**: The contract maintains a token counter to keep track of the total supply of tokens.

## ERC721AdvancedWhitelist.sol

The `ERC721AdvancedWhitelist.sol` contract extends the functionality of the advanced ERC721 contract by adding a whitelist mechanism. It allows for minting of tokens by addresses that are included in a whitelist, verified through a Merkle proof.

### Overview

The contract uses the OpenZeppelin contracts for `ERC721` (an interface for ERC721 tokens), `Counters` (for token counting), `Strings` (for string manipulation), `Ownable` (for basic access control), and `MerkleProof` (for verifying the whitelist).

The contract has several key features:

- **Token Contract**: The contract interacts with an ERC721 token contract, which is specified at the time of contract deployment.
- **Token Minting**: Thecontract allows for minting of tokens by any address, with checks for minting status, minting price, and maximum supply.

## Usage

To use these contracts, you would need to deploy them on the Ethereum network, specifying the token contract.

Once deployed, any address can mint tokens. The minter can reveal their tokens. Administrators can enable or disable minting and set various parameters.

Please note that these contracts should be used as a reference and should be thoroughly tested and audited before use in a production environment.
