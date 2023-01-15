// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

//Will use this smart contract (Inheritance)
// import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3{

    // Created a instance of interface
   // AggregatorV3Interface internal priceFeed;

    // this contract address will create instance for conversion of eth to usd price
    constructor(){
        priceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
    }


    function getLatestPrice() public view returns(int){
        //This priceFeed.latestRoundData() tells that in priceFeed contract instance their is function called latestRoundData() which returns 5 values from that we only want int price(,int price,,,)
        (,int price,,,)= priceFeed.latestRoundData();
        return price; // and will return that price to function
    }
}