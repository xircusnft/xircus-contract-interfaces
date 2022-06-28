//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "../base/IXircusContract.sol";
import "../base/IXircusSync.sol";

/**
 * @title IXircusProvider
 * @author Xircus Development Team
 * @notice Provider Interface
 */

struct Invoice {
  string apiKey; // API key used 
  address market; // Marketplace App
  string domains; // Multiple Domains Separated By Comma e.g localhost, xircusnft.com, free.xircus.app
  uint256 expiration; // Expiration Timestamp
  address owner;
}

interface IXircusProvider is IXircusContract, IXircusSync {

  /// @dev Returns the GraphQL url
  function graphURL() external returns(string memory);

  /// @dev Set the GraphQL url
  function setGraphURL(string memory) external;

  /// @dev Registers the marketplace
  function register(address market) external returns(bool);
}

interface IXircusProviderInvoicer is IXircusProvider {
  // pay the invoice
  function payInvoice(string memory apiKey) external;

  /// @dev Creates an invoice for the api key
  function createInvoice(string memory apiKey, address market, string memory domains) external;

  /// @dev Change the whitelisted domain
  function changeDomains(string memory apiKey, string memory domains) external;

  /// @dev Returns the expiration of the api key
  function expiresIn(string memory apiKey) external returns(uint256);

  /// @dev Remove all expired api keys
  function clearAPIKeys(string[] memory apiKey) external;
}
