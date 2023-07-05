# ERC1155 Contracts

This directory contains five contracts: `ERC1155Basic.sol`, `ERC1155BasicReveal.sol`, `ERC1155Advanced.sol`, `ERC1155AdvancedRoles.sol` and `ERC1155AdvancedWhitelist.sol`. These contracts are designed to facilitate the creation and management of ERC1155 tokens. They provide role-based access control, allowing for specific addresses to have administrative roles. Administrators have the ability to enable or disable the minting of tokens, and to set the minting price.

These contracts are robust solutions for projects looking to implement an ERC1155 token mechanism in an efficient and secure manner. However, they should be thoroughly tested and audited before use in a production environment.

## ERC1155Basic.sol

The `ERC1155Basic.sol` contract is a simpler version that allows for basic minting and burning of tokens. It maintains a balance of minted tokens, which tracks the total amount of tokens minted in the contract. The contract allows for minting of tokens by any address and burning of tokens by the token holder.

### Overview

The contract uses the OpenZeppelin contracts for `IERC1155` (an interface for ERC1155 tokens) and `Ownable` (for basic access control).

The contract has several key features:

- **Token Contract**: The contract interacts with an ERC1155 token contract, which is specified at the time of contract deployment.
- **Minting and Burning**: The contract allows for minting of tokens by any address and burning of tokens by the token holder.

## ERC1155BasicReveal.sol

The `ERC1155BasicReveal.sol` contract extends the functionality of the basic ERC1155 contract by adding a reveal mechanism. It allows for the visibility of the NFTs to be changed.

### Overview

The contract uses the OpenZeppelin contracts for `IERC1155` (an interface for ERC1155 tokens) and `Ownable` (for basic access control).

The contract has several key features:

- **Token Contract**: The contract interacts with an ERC1155 token contract, which is specified at the time of contract deployment.
- **Minting and Burning**: The contract allows for minting of tokens by any address and burning of tokens by the token holder.
- **Reveal Mechanism**: The contract allows for the visibility of the NFTs to be changed.

## ERC1155Advanced.sol

The `ERC1155Advanced.sol` contract extends the functionality of the basic ERC1155 contract by adding more complex features such as a whitelist mechanism, which tracks the addresses that are allowed to mint tokens. It also allows for minting of tokens by any address, and burning of tokens by the token holder.

### Overview

The contract uses the OpenZeppelin contracts for `IERC1155` (an interface for ERC1155 tokens), `AccessControl` (for role-based access control), and `ReentrancyGuard` (to prevent reentrancy attacks).

The contract has several key features:

- **Roles**: The contract defines one role, `MINTER_ROLE`, which has permissions to perform certain actions such as minting tokens.
- **Token Contract**: The contract interacts with an ERC1155 token contract, which is specified at the time of contract deployment.
- **Minting and Burning**: The contract allows for minting of tokens by any address and burning of tokens by the token holder.
- **Whitelist**: The contract maintains a whitelist of addresses that are allowed to mint tokens.

## ERC1155AdvancedRoles.sol

The `ERC1155AdvancedRoles.sol` contract extends the functionality of the advanced ERC1155 contract by adding role-based access control. It defines one role, `MINTER_ROLE`, which has permissions to perform certain actions such as minting tokens.

### Overview

The contract uses the OpenZeppelin contracts for `IERC1155` (an interface for ERC1155 tokens) and `AccessControl` (for role-based access control).

The contract has several key features:

- **Roles**: The contract defines one role, `MINTER_ROLE`, which has permissions to perform certain actions such as minting tokens.
- **Token Contract**: The contract interacts with an ERC1155 token contract, which is specified at the time of contract deployment.
- **Minting and Burning**: The contract allows for minting of tokens by any address and burning of tokens by the token holder.

## ERC1155AdvancedWhitelist.sol

The `ERC1155AdvancedWhitelist.sol` contract extends the functionality of the advanced ERC1155 contract by adding a whitelist mechanism. It tracks the addresses that are allowed to mint tokens.

### Overview

The contract uses the OpenZeppelin contracts for `IERC1155` (an interface for ERC1155 tokens) and `AccessControl` (for role-based access control).

The contract has several key features:

- **Roles**: The contract defines one role, `MINTER_ROLE`, which has permissions to perform certain actions such as minting tokens.
- **Token Contract**: The contract interacts with an ERC1155 token contract, which is specified at the time of contract deployment.
- **Minting and Burning**: The contract allows for minting of tokens by any address and burning of tokens by the token holder.
- **Whitelist**:The contract maintains a whitelist of addresses that are allowed to mint tokens.

## Usage

To use these contracts, you would need to deploy them on the Ethereum network, specifying the token contract.

Once deployed, any address can mint tokens. The token holder can burn their tokens. Administrators can enable or disable minting, set the minting price, and change the visibility of the NFTs.

Please note that these contracts should be used as a reference and should be thoroughly tested and audited before use in a production environment.
