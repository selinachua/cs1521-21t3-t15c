main:
main__prologue:
        addiu   $sp, $sp, -8    # update $sp
        sw      $ra, 0($sp)     # storing $ra to 0($sp)
        sw      $s0, 4($sp)     # storing $s0 to 4($sp)

main__body:
        li      $s0, 5          # $s0 = 5
        li      $t1, 10         # $t1 = 10

        move    $a0, $s0        # $a0 = $s0 
        move    $a1, $t1        # $a1 = $t1

        # BEFORE: expect $s0 to have 5
        # USE AN $s
        jal     add_sum         # add_sum($s0, $t1)

        # AFTER: expect $s0 to have 5 but it has 15
        # printf($s0)
        li      $v0, 1          # $v0 = 1
        move    $a0, $s0        # $a0 = $s0 
        syscall                 # printf($s0) -> 5

main__epilogue:
        lw      $s0, 4($sp)     # restoring value of $s0
        lw      $ra, 0($sp)     # restoring value of $ra
        addiu   $sp, $sp, 4     # update $sp

        jr      $ra             # return;

add_sum:
add_sum__prologue:
        addiu   $sp, $sp, -4    # update $sp
        sw      $s0, 0($sp)     # store $s0 at 0($sp)

add_sum__body:
        add     $s0, $a0, $a1   # $s0 = $a0 + $a1 
                                #
        move    $v0, $s0        #

add_sum__epilogue:
        lw      $s0, 0($sp)     # restoring $s0 from 0($sp)
        addiu   $sp, $sp, 4     # update $sp

        jr      $ra             #
