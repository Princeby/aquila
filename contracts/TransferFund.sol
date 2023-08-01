// SPDX-License-Identifier: UNLICENSED
pragma solidity  ^0.8.19;


import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract TransferFund {
    uint256 transactionCount;

    event Transfer(address sender, address recipient, uint amount, string message, uint256 timestamp, string keyword, bytes32 transactionId);

    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
        bytes32 transactionId;
    }

    TransferStruct[] transactions;

    function addToBlockchain(address payable receiver, uint256 amount, string memory message, string memory keyword) public {
        // Transfer tokens from the sender to the contract
        IERC20 token = IERC20(tokenAddress);
        token.transferFrom(msg.sender, address(this), amount);

        transactionCount += 1;
        bytes32 transactionId = sha256(abi.encodePacked(msg.sender, receiver, amount, message, block.timestamp, keyword));
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword, transactionId));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword, transactionId);
    }

    function getTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }

    function getTransactionCount() public view returns(uint256) {
        return transactionCount;
    }

}