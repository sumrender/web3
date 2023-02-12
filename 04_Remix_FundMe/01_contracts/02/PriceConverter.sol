// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";


library PriceConverter {
    
    function getPrice() internal view returns (uint256){
        // ABI from import statement
        // Address: 0x8A753747A1Fa494EC906cE90E9f37563A8AF630e
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        (,int256 price,,,) = priceFeed.latestRoundData();
        // ETH in terms of USD
        return uint256(price*1e10);
    }

    function getConversionRate(uint256 ethAmount) internal view returns (uint256){
        uint256 ethPrice = getPrice();
        uint256 ethAmountInUSD = (ethPrice*ethAmount)/1e18;
        return ethAmountInUSD;
    }

    function getVersion() internal view returns (uint256){
        return AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e).version();
    }

}