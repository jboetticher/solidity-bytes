# MLOAD and String

After transacting the mloader function, what do you think is stored in the dest field? Hint: it's not "Hello!".  


While in memory, strings are stored in at least two words (32 bytes per word). The first describes length while the following words contain the string itself. 
So in this case, dest will equal "6" for a length of 6.


But if you wanted to store the first word of text, you would add 0x20 to the hello address to get to the next word. Why? Because 0x20 = 32, which is the size of a word!

