//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Kalm is ERC20 {
    constructor(uint256 initialSupply) ERC20("Kalm", "KLM") {
        _mint(msg.sender, initialSupply);
    }
}