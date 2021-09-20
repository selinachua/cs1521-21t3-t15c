#include <stdio.h>
#include <assert.h>

typedef unsigned int Word;

/**
 * e.g. 1010 -reverseBits()-> 0101
 * 
 * in = 1010
 * out = 0000
 * 1. extract each bit
 * 2. check if each bit is 1 or 0
 * 3. if it is 1, set the bit in return value
 * 
 * step by step:
 * extract the rightmost bit:
 * 1010
 * 0001 &
 * -------
 * 0000 == 0 -> rightmost bit = 0
 * 
 * extracting second rightmost bit:
 * 1010
 * 0010 &
 * -------
 * 0010 != 0 -> second rightmost bit = 1
 * 
 * setting the bit in out:
 * 0000
 * 0100 |
 * -------
 * 0100 = out
 * 
 * extracting the third rightmost bit:
 * 1010
 * 0100 &
 * -------
 * 0000 == 0 -> third rightmost bit = 0
 * 
 * extracting the leftmost bit:
 * 1010
 * 1000 &
 * ------
 * 1000 != 0 -> leftmost bit = 1
 * 
 * setting the bit in out:
 * 0100
 * 0001 |
 * -------
 * 0101 = out -> final binary
 * 
 * 
 * pseudocode:
 * int out = 0 //0000...0000
 * for each bit inside the binary {
 *      extract the bit using bitwise AND by doing val & mask
 *      if (result != 0) {
 *          set the bit in the return value using bitwise OR 
 *      }
 * }
 * return out;
 * 
 */
Word reverseBits(Word w) {
    return 0;
}

// testing
int main(void) {
    Word w1 = 0x01234567;
    // 0000 => 0000 = 0
    // 0001 => 1000 = 8
    // 0010 => 0100 = 4
    // 0011 => 1100 = C
    // 0100 => 0010 = 2
    // 0101 => 1010 = A
    // 0110 => 0110 = 6
    // 0111 => 1110 = E
    assert(reverseBits(w1) == 0xE6A2C480);
    puts("All tests passed!");
    return 0;
}