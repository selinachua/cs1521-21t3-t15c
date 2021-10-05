// print a triangle
#include <stdio.h>

int main (void) {
    for (int i = 1; i <= 10; i++) {
        for (int j = 0; j < i; j++) {
            printf("*");
        }
        printf("\n");
    };
    return 0;
}

int main(void) {
    int i = 1;
    while (i <= 10) {
        int j = 0; // init
        while (j < i) { // cond
            printf("*");
            j++; // increment & jump
        }
        printf("\n");
        i++;
    }
    return 0;
}

int i = 0; // initialisation
while (i < value) { // condition
    ....
    i++; // increment & jump back up
}