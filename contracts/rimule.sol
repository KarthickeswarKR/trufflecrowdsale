pragma solidity ^0.4.11;

import "../interface/contracts/crowdsale/CappedCrowdsale.sol";
import "../interface/contracts/crowdsale/RefundableCrowdsale.sol";
import "../interface/contracts/token/MintableToken.sol";

contract CrowdsaleRimule is MintableToken {

  string public constant name = "RIMULE";
  string public constant symbol = "RIM";
  uint8 public constant decimals = 6;

}

contract Crowdsale is CappedCrowdsale, RefundableCrowdsale {

  function Crowdsale(uint256 _startTime, uint256 _endTime, uint256 _rate, uint256 _goal, uint256 _cap, address _wallet)
    CappedCrowdsale(_cap)
    FinalizableCrowdsale()
    RefundableCrowdsale(_goal)
    Crowdsale(_startTime, _endTime, _rate, _wallet)
  {
    require(_goal <= _cap);
  }

  function createTokenContract() internal returns (MintableToken) {
    return new CrowdsaleRimule();
  }

}
