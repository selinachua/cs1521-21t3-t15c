# Practice how to convert C variables into MIPS data directives.
# Two types of variables:
# - uninitialised -> int start; -> .space 
# - initalised    -> int a = 1; -> .byte, .word, etc.

	.data

# prompt = "Enter a number:" -> add a string to the data section
prompt:
        .asciiz         "Enter a number:"
# int u; -> uninitialised -> .space
u:
        .space          4
# int v = 42; -> initialised int -> 4 byte memory that is initialised to 42
v:
        .word           42
# char w; -> uninitialised -> .space 
w:
        .space          1
# char x = 'a'; -> initialised char -> .byte
x:
        .byte           'a'
# double y; -> uninitialised -> .space 
y:
        .space          8
# int z[20]; -> uninitialised -> .space
z:
        .space          80
# int numbers[4] = {0, 1, 2, 3}; -> initialised 
numbers:
        .word           0, 1, 2, 3
# char chs = {'a', 'b'}; -> initialised 
chs:
        .byte           'a', 'b'
