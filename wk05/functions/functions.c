#include <stdio.h>

int add_nums(int x, int y);

int main(void) {
    int i = 0;
    int x, y;
    scanf("%d", &x);
    scanf("%d", &y);

    int sum = add_nums(x, y);
    printf("%d\n", sum);

    return 0;
}

int add_nums(int x, int y) {
    int sum = x + y;
    return sum;
}