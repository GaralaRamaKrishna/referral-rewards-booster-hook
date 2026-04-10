// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

abstract contract BaseHook {
    address public gotchipus;

    constructor(address _gotchipus) {
        gotchipus = _gotchipus;
    }
}
