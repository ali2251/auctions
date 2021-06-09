// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

abstract contract EnglishAuction {

    struct Bid {
        address bidder;
        uint256 amount;
        uint256 timestamp;
    }

    struct Item {
        address seller;
        uint256 startingPrice;
        uint256 minimumIncrement;
        uint256 bidFinaliseTime;
        uint256 bidStatus;
        uint256 bidEndingTime;
    }

    mapping(bytes32 =>  Bid) bids;
    mapping (bytes32 => uint256) highestBid;


    function sell(bytes32 item, uint256 startingPrice, uint256 bidFinaliseTime, uint256 minimumIncrement) virtual external;
    function placeBid(bytes32 item, uint256 bid) virtual external;
    function settle(bytes32 item) virtual external;
    function cancel(bytes32 item) virtual external;

}
