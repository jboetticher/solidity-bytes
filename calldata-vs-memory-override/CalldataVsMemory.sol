// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

abstract contract Parent {
    function input(bytes memory _payload) public virtual {        
        _input(_payload);
    } 

    function _input(bytes memory _payload) internal virtual;
}

contract Child is Parent {
    bytes public destination;
    function _input(bytes calldata _payload) override internal {
        destination = _payload;
    }
}