pragma solidity ^0.4.11;

import "../interface/contracts/crowdsale/CappedCrowdsale.sol";
import "../interface/contracts/crowdsale/RefundableCrowdsale.sol";
import "../interface/contracts/token/MintableToken.sol";

contract Rimule is MintableToken {

string public constant name = "RIMULE";
string public constant symbol = "RIM";
uint8 public constant decimals = 6;

}

contract phase1Crowdsale is CappedCrowdsale, RefundableCrowdsale {

  function phase1Crowdsale(uint256 _startTime, uint256 _endTime, uint256 _rate, uint256 _goal, uint256 _cap, address _wallet)
    CappedCrowdsale(_cap)
    FinalizableCrowdsale()
    RefundableCrowdsale(_goal)
    Crowdsale(_startTime, _endTime, _rate, _wallet)
  {
    //As goal needs to be met for a successful crowdsale
    //the value needs to less or equal than a cap which is limit for accepted funds
    require(_goal <= _cap);
  }

  function createTokenContract() internal returns (MintableToken) {
    return new Rimule();
  }

}
