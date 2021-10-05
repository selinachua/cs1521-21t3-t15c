        .data 

###################################################
        .text
main: 
# `int i` in $t0 
# `int j` in $t1
        li      $t0, 1          # $t0 = 1 - initialisation
main__outer_loop:     
        bgt     $t0, 10, main__outer_loop_end   # condition

        li      $t1, 0          # int j = 0; - initialisation
main__inner_loop:
        bge     $t1, $t0, main__inner_loop_end

        li      $v0, 11         # $v0 = 11
        li      $a0, '*'        # $a0 = '*'
        syscall                 # printf("*");

        addi    $t1, $t1, 1     # j++;
        j       main__inner_loop

main__inner_loop_end:
        li      $v0, 11         # $v0 = 11
        li      $a0, '\n'       # $a0 = '\n'
        syscall

        addi    $t0, $t0, 1     # i++; - increment
        j       main__outer_loop        # jump back up 

main__outer_loop_end:       
        li      $v0, 0
        jr      $ra