pragma solidity ^0.6.6;

interface ILendingPool {
  function liquidationCall ( address _collateral, address _reserve, address _user, uint256 _purchaseAmount, bool _receiveAToken ) external payable;
}
