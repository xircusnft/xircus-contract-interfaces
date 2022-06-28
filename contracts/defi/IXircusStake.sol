//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "../base/IXircusContract.sol";
import "../base/IXircusSync.sol";

/**
 * @title IXircusStake
 * @author Xircus Development Team
 * @notice Staking Interface
 * @dev Multi-Currency Staking Feature
 */

struct RewardConfig {
  address currency; 
  bool isAPY; // defaults: APR 
  uint256 totalMonths; // Total Months To Expire
  uint256 duration; // Reward Computed By (duration) days
  uint256 rate; // APY or APR Rate
  uint256 rewards; // Total Available Rewards
  uint256 totalStake;
}

struct Account {
  address account;
  uint256 totalStake; // Total Amount Staked
  uint256 totalRewards; // Total Withdrawn Reward
  uint256 reward; // Claimable Reward Per Duration
}

interface IXircusStake is IXircusContract, IXircusSync {
  
  /// @dev Sets the reward configuration
  function setConfig(RewardConfig memory config) external;

  /// @dev Returns the reward configuration
  function getRewardConfig(address currency) external returns(RewardConfig memory);

  /// @dev Returns the staking account by currency
  function getAccount(address account, address currency) external returns(Account memory);

  /// @dev Deposits the amount to stake
  function deposit(address account, address currency, uint256 amount) external;

  /// @dev Returns the amount to earn
  function earned(address account, address currency) external returns(uint256);

  /// @dev Withdraw the staked tokens
  function withdraw(address account, address currency) external;

  /// @dev Claim the reward tokens
  function claim(address account, address currency) external;
}
