// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

// @dev: Berke Kiran - berkekiran.com

// @dev Import IERC20 and AccessControl from OpenZeppelin contracts
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract PoolAdvanced is AccessControl {
    // @dev Declare a constant variable for the admin role using the keccak256 hash function
    bytes32 public constant ADMIN = keccak256("ADMIN");

    // @dev Declare a constant variable for the depositor role using the keccak256 hash function
    bytes32 public constant DEPOSITOR = keccak256("DEPOSITOR");

    // @dev Enable/disable depositing
    bool public depositingEnabled = false;

    // @dev Enable/disable withdrawing
    bool public withdrawingEnabled = false;

    // @dev Set the pool balance
    uint256 public poolBalance;

    // @dev Token contract interface
    IERC20 immutable private token;

    // @dev Event emitted when depositing is enabled or disabled
    event DepositingEnabled(bool enabled);

    // @dev Event emitted when withdrawing is enabled or disabled
    event WithdrawingEnabled(bool enabled);

    // @dev Event emitted when tokens are deposited into the pool
    event Deposited(address indexed depositor, uint256 amount, uint256 poolBalance);

    // @dev Event emitted when tokens are withdrawn from the pool
    event Withdrawn(address indexed receiver, uint256 amount, uint256 poolBalance);

    // @dev Event emitted when tokens are withdrawn
    event TokensWithdrawn(address indexed token, address indexed receiver, uint256 amount);

    // @dev Event emitted when native tokens (e.g., Ether) are withdrawn
    event NativeTokensWithdrawn(address indexed receiver, uint256 amount);
    
    // @dev Function to receive Ether
    receive() external payable {}

    // @dev Function to receive Ether when no other function matches the called function signature
    fallback() external payable {}

    // @dev Constructor function that sets the token contract for the pool
    constructor(IERC20 tokenContract, address depositor) {
        _setRoleAdmin(ADMIN, ADMIN);
        _setRoleAdmin(DEPOSITOR, ADMIN);
        
        _grantRole(ADMIN, msg.sender);
        _grantRole(DEPOSITOR, depositor);
        
        token = tokenContract;
    }

    // @dev Function to deposit tokens into the pool
    function deposit(uint256 amount) public {
        require(hasRole(ADMIN, msg.sender) || hasRole(DEPOSITOR, msg.sender), "Only administrators and authorized depositors are allowed to deposit tokens");

        // @dev Check if depositing is enabled
        require(depositingEnabled, "Depositing is currently disabled");

        // @dev Check if the deposit amount is greater than zero
        require(amount > 0, "Deposit amount must be greater than zero");
        
        // @dev Check if the depositor has sufficient tokens
        uint256 balance = token.balanceOf(msg.sender); 
        require(balance >= amount, "Token balance is insufficient for the desired deposit");

        // @dev Increase the pool balance by the deposited amount
        poolBalance += amount;

        // @dev Emit an event indicating the tokens have been deposited
        emit Deposited(msg.sender, amount, poolBalance);

        // @dev Transfer the tokens from the depositor to the pool
        bool success = token.transferFrom(msg.sender, address(this), amount);
        require(success, "Deposit failed");
    }

    // @dev Function to withdraw tokens from the pool
    function withdraw(address receiver, uint256 amount) public {
        require(hasRole(ADMIN, msg.sender), "Only administrators are allowed to withdraw tokens");

        // @dev Check if withdrawing is enabled
        require(withdrawingEnabled, "Withdrawing is currently disabled");
    
        // @dev Check if the receiver address is not the zero address
        require(receiver != address(0), "Withdraw address cannot be the zero address");

        // @dev Check if the withdraw amount is greater than zero
        require(amount > 0, "Withdraw amount must be greater than zero");

        // @dev Check if there are sufficient tokens in the pool and poolBalance to perform the withdrawal
        uint256 balance = token.balanceOf(address(this)); 
        require(balance >= amount && poolBalance >= amount, "Insufficient tokens to withdraw");

        // @dev Decrease the pool balance by the withdrawn amount
        poolBalance -= amount;

        // @dev Emit an event indicating the tokens have been withdrawn
        emit Withdrawn(receiver, amount, poolBalance);

        // @dev Transfer the tokens from the pool to the receiver
        bool success = token.transfer(receiver, amount);
        require(success, "Withdraw failed");
    }

    // @dev Function to withdraw native tokens (e.g., Ether) from the contract
    function withdrawNativeTokens() public {
        require(hasRole(ADMIN, msg.sender), "Only administrators are allowed to withdraw native tokens");

        // @dev Ensure that there are tokens available to withdraw
        uint256 balance = address(this).balance;
        require(balance > 0, "Insufficient tokens to withdraw");

        // @dev Emit an event indicating the withdrawal of native tokens
        emit NativeTokensWithdrawn(msg.sender, balance);
    
        // @dev Ensure the withdrawal was successful
        (bool success, ) = payable(msg.sender).call{value: balance}("");
        require(success, "Withdraw failed");
    }
    
    // @dev Function to withdraw tokens from the contract
    function withdrawTokens(IERC20 tokenToWithdraw) public {
        require(hasRole(ADMIN, msg.sender), "Only administrators are allowed to withdraw tokens");

        // @dev Ensure the token contract address is valid
        require(address(tokenToWithdraw) != address(0), "Token contract address cannot be the zero address");

        // @dev Ensure that there are tokens available to withdraw
        uint256 balance = tokenToWithdraw.balanceOf(address(this)); 
        require(balance > 0, "Insufficient tokens to withdraw");
        
        if(address(tokenToWithdraw) == address(token)) {
            poolBalance = 0;
        }

        // @dev Emit an event indicating the withdrawal of tokens
        emit TokensWithdrawn(address(tokenToWithdraw), msg.sender, balance);

        // @dev Ensure the withdrawal was successful
        bool success = tokenToWithdraw.transfer(msg.sender, balance);
        require(success, "Withdraw failed");
    }

    // @dev Function to enable or disable depositing
    function setDepositingEnabled(bool enabled) public {
        require(hasRole(ADMIN, msg.sender), "Only administrators are allowed to set depositing enabled or disabled");

        depositingEnabled = enabled;
        
        emit DepositingEnabled(enabled);
    }
    
    // @dev Function to enable or disable withdrawing
    function setWithdrawingEnabled(bool enabled) public {
        require(hasRole(ADMIN, msg.sender), "Only administrators are allowed to set withdrawing enabled or disabled");

        withdrawingEnabled = enabled;
        
        emit WithdrawingEnabled(enabled);
    }
}