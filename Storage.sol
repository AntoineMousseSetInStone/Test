// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 private storedValue;

    event ValueUpdated(uint256 newValue);

    function set(uint256 _value) external {
        storedValue = _value;
        emit ValueUpdated(_value);
    }

    function get() external view returns (uint256) {
        return storedValue;
    }
}
