//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

/**
 * @title IXircusContract
 * @author Xircus Development Team
 * @notice Base Interface Contract
 */

interface IXircusContract {
  /// @dev Returns the contract version
  function contractVersion() external returns(uint8);

  /// @dev Returns the contract type
  function contractType() external returns(bytes32);

  /// @dev Returns the contract uri either base64 encoded json or ipfs url
  function contractURI() external returns(string memory);

  /// @dev Sets the contract uri
  function setContractURI(string memory uri) external;
}
