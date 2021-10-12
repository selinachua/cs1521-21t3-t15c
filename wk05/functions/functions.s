        .text
main:
# x = $t0
# y = $t1
# i = $t6
# sum = $t3
        # set up stack frame 
        addiu   $sp, $sp, -8
        sw      $ra, 0($sp)
        sw      $s0, 4($sp)

        # TODO: Add code here
        li      $t6, 0          # i = 0
        
        li      $v0, 5
        syscall
        move    $t0, $v0        # scanf("%d", &x);

        li      $v0, 5
        syscall
        move    $t1, $v0        # scanf("%d", &y);

        # TODO: Add code here
        # 1. Set up arguments (correct values are in the correct $a registers)
        # 2. Call jal
        # 3. Result is $v0 
        move    $a0, $t0        # $a0 = $t0 
        move    $a1, $t1        # $a1 = $t1 = y

        # $s0 = 77
        jal     add_nums        # add_nums(x, y);
        # $s0 = 77

        move    $t3, $v0        # $t3 = $v0 

        move    $a0, $t3
        li      $v0, 1
        syscall

        li      $a0, '\n'
        li      $v0, 11
        syscall

        # TODO: Add code here
        # tearing down the stack frame
        lw      $s0, 4($sp)
        lw      $ra, 0($sp)
        addiu   $sp, $sp, 8

        jr      $ra



add_nums:
        # $a0: `int x`
        # $a1: `int y`
        # set up stack frame
        addiu   $sp, $sp, -4
        sw      $ra, 0($sp)

        add     $v0, $a0, $a1   # x + y
        li      $t0, 100
        
        # move    $v0, $t0        # $v0 = $t0 = sum

        # tearing down stack frame
        lw      $ra, 0($sp)
        addiu   $sp, $sp, 4

        jr      $ra             # return $v0;
        


#######################################
        .data