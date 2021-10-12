        .data
numbers:
        .word   0, 0, 0, 0, 0, 0, 0, 0, 0, 0

####################################################
        .text
main:
# `int i` in $t0
# `int num` in $t1
        li      $t0, 0          # i = 0;
main__while:
        bge     $t0, 10, main__end      # while (i < 10)

        li      $v0, 5          # $v0 = 5
        syscall                 # scanf("%d");
        move    $t1, $v0        # $t1 = $v0

        mul     $t2, $t0, 4     # offset = i * 4
        sw      $t1, numbers($t2)       # store `num` into addr numbers + offset

        addi    $t0, $t0, 1     # i++;
        j       main__while

main__end:
        li      $v0, 0          
        jr      $ra