# Calldata Vs Memory

What's wrong with this code? Hint: it has to do with memory.  


The child is overriding the _input function with no compiler errors, but it's overriding with calldata instead of memory. This can cause runtime errors, which I encountered while incorrectly implementing LayerZero's smart contracts!  

https://github.com/LayerZero-Labs/solidity-examples/blob/a9468f5c5dedbb8e7112bc1feb1475032b3da73e/contracts/lzApp/NonblockingLzApp.sol#L44


This issue was fixed in solidity version 0.8.14. You might encounter it as well if you've been told that calldata is cheaper than memory.

https://blog.soliditylang.org/2022/05/17/data-location-inheritance-bug/