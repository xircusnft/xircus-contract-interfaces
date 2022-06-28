//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

/**
 * @title IXircusRedeem
 * @author Xircus Development Team
 * @notice Syncs the conta
 */

interface IXircusRedeem {

  /// @dev Redeem the reward 
  function redeem(uint256 amount) external;
}
