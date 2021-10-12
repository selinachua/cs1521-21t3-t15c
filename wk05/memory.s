Address       Data Definition
0x10010000    aa:       .word 42     # int aa = 42;
0x10010004    bb:       .word 666    # int bb = 666;
0x10010008    cc:       .word 1      # int cc = {1,3,5,7};
0x1001000C              .word 3
0x10010010              .word 5
0x10010014              .word 7

# What address will be calculated, and what value will be loaded 
# into register $t0, after each of the following statements (or 
# pairs of statements)?
la   $t0, aa            # $t0 = 0x10010000
lw   $t0, bb            # $t0 = 666
lb   $t0, bb            # ...
lw   $t0, aa+4          # $t0 = 666 
                        # equivalent to lw $t0, bb

# Loading the first element of the array cc
la   $t1, cc            # $t1 = 0x10010008
# Use the value of $t1 to be an address
lw   $t0, 0($t1)        # $t0 = 1

# Loading the element at index 3 of array cc.
la   $t1, cc            # $t1 = 0x10010008
lw   $t0, 12($t1)       # $t0 = 7, lw   $t0, 12 + $t1

# Loading the element at index 2 of array cc.
li   $t1, 8             # $t1 = 8
lw   $t0, cc($t1)       # $t0 = 5
                        # lw   $t0, cc + $t1

la   $t1, cc            # $t1 = 0x10010008
lw   $t0, 2($t1)        # $t0 = error