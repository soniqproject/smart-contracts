pragma solidity ^0.4.18;

/**
 * @title ERC20 interface
 * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
 */
contract ERC20 {

  /// @return total amount of tokens
  function totalSupply() public view returns (uint256);

  /// @param who The address from which the balance will be retrieved
  /// @return The balance
  function balanceOf(address who) public view returns (uint256);

  /// @notice send `value` token to `to` from `msg.sender`
  /// @param to The address of the recipient
  /// @param value The amount of token to be transferred
  /// @return Whether the transfer was successful or not
  function transfer(address to, uint256 value) public returns (bool);

  /// @notice send `value` token to `to` from `from` on the condition it is approved by `from`
  /// @param from The address of the sender
  /// @param to The address of the recipient
  /// @param value The amount of token to be transferred
  /// @return Whether the transfer was successful or not
  function transferFrom(address from, address to, uint256 value) public returns (bool);

  /// @param owner The address of the account owning tokens
  /// @param spender The address of the account able to transfer the tokens
  /// @return Amount of remaining tokens allowed to spent
  function allowance(address owner, address spender) public view returns (uint256);

  /// @notice `msg.sender` approves `_addr` to spend `_value` tokens
  /// @param spender The address of the account able to transfer the tokens
  /// @param value The amount of wei to be approved for transfer
  /// @return Whether the approval was successful or not
  function approve(address spender, uint256 value) public returns (bool);

  event Transfer(address indexed from, address indexed to, uint256 value);
  event Approval(address indexed owner, address indexed spender, uint256 value);
}
