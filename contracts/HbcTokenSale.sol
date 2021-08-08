pragma solidity ^0.5.2;
import "./HbcToken.sol";

contract HbcTokenSale {
  address admin;
  HbcToken public tokenContract;
  uint256 public tokenPrice;

  constructor(HbcToken _tokenContract, uint256 _tokenPrice) public {
    admin = msg.sender; 
    tokenContract = _tokenContract; 
    tokenPrice = _tokenPrice; 
  }
}
