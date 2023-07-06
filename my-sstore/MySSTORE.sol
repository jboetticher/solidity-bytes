pragma solidity 0.8.13;

contract MySSTORE {
    uint256 public val;
    function storeFive() external {
        assembly {
            sstore(val.slot, 0x05)
        }
    }
}