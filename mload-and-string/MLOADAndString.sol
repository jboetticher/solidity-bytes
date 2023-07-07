// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SLOADAndString {
    bytes32 public dest;
    function mloader() external {
        string memory hello = "Hello!";
        assembly {
            let x := mload(hello)
            sstore(dest.slot, x)
        }
    }
}

contract SLOADAndStringWithOffset {
    bytes32 public dest;
    function mloader() external {
        string memory hello = "Hello!😊";
        assembly {
            let x := mload(add(hello, 0x20))
            sstore(dest2.slot, x)
        }
    }
}