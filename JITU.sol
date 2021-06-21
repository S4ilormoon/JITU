pragma solidity 0.7.4;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./AAVE.sol";
import "./kaave.sol;
import "./ILendingPoolAddressesProvider.sol";
import "./ILendingPool.sol";


contract Liquidator {

    address constant kaaveEthAddress = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
    address constant lendingPoolAddressProvider = 0x24a42fD28C976A61Df5D00D0599C34c4f90748c8; // Aave market - mainnet

    function myLiquidationFunction(
        address _collateral, 
        address _reserve,
        address _user,
        uint256 _purchaseAmount,
        bool _receiveaToken
    )
        external
    {
        ILendingPoolAddressesProvider addressProvider = ILendingPoolAddressesProvider(lendingPoolAddressProvider);

        if (_reserve != aaveEthAddress) {
          require(IERC20(_reserve).approve(addressProvider.getLendingPoolCore(), _purchaseAmount), "Approval error");
        }
    
        ILendingPool lendingPool = ILendingPool(addressProvider.getLendingPool());
        
        // Assumes this contract already has `_purchaseAmount` of `_reserve`.
        lendingPool.liquidationCall{value: _reserve == aaveEthAddress ? _purchaseAmount : 0}(_collateral, _reserve, _user, _purchaseAmount, _receiveaToken);
    }
}
contract liquidator {


function jitu => {
 let _collateralAsset = collateralAsset;
 let _debtAsset = debtAsset;
 let _user = msg.sender;
 let _debt = debtToCover;
 let _recieveA = bool;

 preempt(this.collateralAsset , this.debtAsset, this.user, This.debt , recieveA)
 
 
 
 
 
 
 
 
 
 
 
 
 
  function preempt(
        address collateralAsset, 
        address debtAsset, 
        address user, 
        uint256 debtToCover, 
        bool receiveAToken
    ) external {
        // TODO: Implement This
        // TODO: this function should simulate liquidationCall on AAVE but by not considering
        //       the buffer provided as collateral in the calculations to check if a position
        //       is underwater.
    } 
