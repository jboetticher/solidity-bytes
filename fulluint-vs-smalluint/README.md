# Full UInt vs Small UInt

Which contract's add function is cheaper? Hint: storage is not being touched.

Turns out that uint256 is cheaper! This is because there isn't any bitwise logic when interpreting uint256, since it takes up an entire word (32 bytes). With uint8, there is overhead because the EVM has to first chop up the word into 1 byte.