#include <stdio.h>

int main(void) {
    int x, y;
    printf("Enter a number: ");
    scanf("%d", &x);

    if (x > 46340) {
        printf("square too big for 32 bits\n");
        // if (x == 50000) {
        //     printf("too big\n");
        // }
    } else {
        y = x * x;
        printf("%d\n", y);
    }

    return 0;
}