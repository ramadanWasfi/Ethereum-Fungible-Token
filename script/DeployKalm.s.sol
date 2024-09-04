//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {Script} from "forge-std/Script.sol";
import {Kalm} from "../src/Kalm.sol";

contract DeployKalm is Script {
    uint256 public constant INITIAL_SUPPLY = 300 ether;

    function run() public returns (Kalm) {
        vm.startBroadcast();
        Kalm token = new Kalm(INITIAL_SUPPLY);
        vm.stopBroadcast();
        return token;
    }
}
