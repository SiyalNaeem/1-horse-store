// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {HorseStore} from "../../src/horseStoreV1/HorseStore.sol";

abstract contract Base_TestV1 is Test {
    HorseStore public horseStore;

    function setUp() public virtual {
        horseStore = new HorseStore();
    }

    function testReadValue() public view {
        uint256 initialValue = horseStore.readNumberOfHorses();
        console.log("Initial number of horses:", initialValue);
        assertEq(initialValue, 0);
    }
}
