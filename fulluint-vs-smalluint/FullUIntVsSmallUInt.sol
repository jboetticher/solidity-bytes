pragma solidity 0.8.19;

// 595
contract SmallUInt {
    function add(uint8 x) external {
        x + 1;
    }
}

// 577
contract FullUInt {
    function add(uint256 x) external {
        x + 1;
    }
}