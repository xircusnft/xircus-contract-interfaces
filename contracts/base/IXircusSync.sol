//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

/**
 * @title IXircusSync
 * @author Xircus Development Team
 * @notice Syncs the conta
 */

interface IXircusSync {
  /// @dev Syncs the EIP20 token reward by another contract
  function sync(address currency, uint256 amount) external;  

  /// @dev Sync the native token reward by another contract
  function syncWei(uint256 amount) external;
}
