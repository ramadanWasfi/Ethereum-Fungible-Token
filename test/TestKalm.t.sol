//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;
import {Test} from "forge-std/Test.sol";
import {Kalm} from "../src/Kalm.sol";
import {DeployKalm} from "../script/DeployKalm.s.sol";

contract TestKalm is Test {
    Kalm public mytoken;
    DeployKalm public deployer;
    uint256 public constant INITIAL_BALANCE = 100 ether;
    address public deployer_address;

    address user1;
    address user2;

    function setUp() public {
        deployer = new DeployKalm();
        mytoken = deployer.run();
        user1 = makeAddr("ahmed");
        user2 = makeAddr("Doha");
        deployer_address = address(deployer);

        vm.prank(msg.sender);
        mytoken.transfer(user1, INITIAL_BALANCE);
    }

    function testInitialSupply() public view {
        assertEq(mytoken.totalSupply(), deployer.INITIAL_SUPPLY());
    }


    function testNameofTheToken() public view {
        assertEq(mytoken.name(), "Kalm");
    }

    function testSymbolOfTheToken() public view {
        assertEq(mytoken.symbol(), "KLM");
    }

     function testAllowances() public {
        uint256 initialAllowance = 500;

        vm.prank(user1);
        mytoken.approve(user2, initialAllowance);
        uint256 transferAmount = 100;

        vm.prank(user2);
        mytoken.transferFrom(user1, user2, transferAmount);
        assertEq(mytoken.balanceOf(user2), transferAmount);
        assertEq(mytoken.balanceOf(user1), INITIAL_BALANCE - transferAmount);
        assertEq(mytoken.allowance(user1,user2),400);
    }

}