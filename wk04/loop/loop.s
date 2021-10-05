        .data

##########################################
        .text 
main:
        # `int x` in $t0
        li      $t0, 24         # $t0 = 24
main__loop:
        bge     $t0, 42, main__end

        li      $v0, 1          # $v0 = 1
        move    $a0, $t0        # $a0 = $t0
        syscall                 # printf("%d", x);

        li      $v0, 11         # $v0 = 11
        li      $a0, '\n'       # $a0 = '\n'
        syscall                 # printf("\n");

        addi    $t0, $t0, 3     # $t0 = $t0 + 3
        j       main__loop

main__end:
        li      $v0, 0
        jr      $ra             # return 0;