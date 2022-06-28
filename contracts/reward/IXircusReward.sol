//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "../base/IXircusSync.sol";

/**
 * @title IXircusReward
 * @author Xircus Development Team
 * @notice Reward Interface
 */

interface IXircusReward is IXircusSync {

  /// @dev Harvest the reward token
  function harvest(address account) external;

  /// @dev Returns the amount earned by the account
  function earned(address account) external returns(uint256);

  /// @dev Creates a snapshot of the reward
  function snapshotReward(address currency, uint256 amount) external;

  /// @dev Returns the address of the reward token
  function getRewardToken() external returns(address);
}
