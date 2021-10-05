        .data 
prompt:
        .asciiz         "Enter a number: "
too_big:
        .asciiz         "square too big for 32 bits\n"
##############################################
        .text
main:
        # `int x` in $t0
        # `int y` in $t1
        li      $v0, 4          # $v0 = 4
        la      $a0, prompt     # $a0 = prompt
        syscall                 # printf("Enter a number: ");

        li      $v0, 5          # $v0 = 5
        syscall                 # result is in $v0
        move    $t0, $v0        # scanf("%d", &x); $t0 = $v0

main__if:
        ble     $t0, 46340, main__else          # if (x <= 46340) goto main__else

        li      $v0, 4          # $v0 = 4
        la      $a0, too_big    # $a0 = too_big
        syscall                 # printf(too_big);

# main__if_50000:
#         bne     $t0, 50000, main__endif_50000

#         # printf too big\n   

# main__endif_50000:

        j       main__endif     # jump to endif

main__else:
        mul     $t1, $t0, $t0   # $t1 = $t0 * $t0

        li      $v0, 1          # $v0 = 1
        move    $a0, $t1        # $a0 = $t1
        syscall                 # printf("%d", y);

        li      $v0, 11         # $v0 = 11
        li      $a0, '\n'       # $a0 = '\n'
        syscall

main__endif:
        li      $v0, 0          # $v0 = 0
        jr      $ra             # return $v0;