// Unlock the vault to pass the level!

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Vault {
    bool public locked;
    bytes32 private password;

    constructor(bytes32 _password) public {
        locked = true;
        password = _password;
    }

    function unlock(bytes32 _password) public {
        if (password == _password) {
            locked = false;
        }
    }
}
