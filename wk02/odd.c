/**
 * Program that checks if a number is odd using bitwise operations.
 */

#include <stdio.h>

int is_odd(int num);

int main(void) {
    printf("Please enter a number: ");
    int num = 0;
    scanf("%d", &num);

    if (is_odd(num)) {
        printf("ODD\n");
    } else {
        printf("EVEN\n");
    }

    return 0;
}

/**
 * Function that checks if an int is odd or even using bit masking.
 *
 * 0111 1010 -> even
 * 0111 1011 -> odd
 */
int is_odd(int num) {
    // TODO: Fill in this function.
    
    return 0;
}