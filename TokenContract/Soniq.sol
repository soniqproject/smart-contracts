pragma solidity ^0.4.18;

import "./Token.sol";
import "./ERC20.sol";

contract Soniq is ERC20, Token {

  string public constant name    = "Soniq Token";  //The Token's name - Soniq Token
  uint8 public constant decimals = 18;               //Number of decimals of the smallest unit
  string public constant symbol  = "SONIQ";            //An identifier - soniq
  uint public INITIAL_SUPPLY     = 50000000 * 10 ** 18;  //

  function Soniq() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[0x106b9fA0bb9Eefb4F2f559B723a5545f22F62309] = INITIAL_SUPPLY;
  }

}
