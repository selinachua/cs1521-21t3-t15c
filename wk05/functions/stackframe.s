## Stack frames
#

function__prologue:
	# set up stack frame
	addiu   $sp, $sp, -24
        sw      $ra, 0($sp)
        sw      $s0, 4($sp)
        sw      $s1, 8($sp)
        sw      $s2, 12($sp)
        sw      $s3, 16($sp)
        sw      $s4, 20($sp)

function__body:
	# ... some code over here ...

function__epilogue:
	# tear down stack frame
        lw      $s4, 20($sp)
        lw      $s3, 16($sp)
        lw      $s2, 12($sp)
        lw      $s1, 8($sp)
        lw      $s0, 4($sp)
        lw      $ra, 0($sp)
        addiu   $sp, $sp, 24

	jr 	$ra