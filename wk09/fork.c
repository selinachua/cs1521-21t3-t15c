#include <stdio.h>
#include <unistd.h>
#include <err.h>

// Q5
// What are the possible outputs from the execution of this code?
/*
 * 
 */
int main (void)
{
    int x = 1;
    pid_t pid = fork ();
    if (pid < 0) {
        err (1, "fork failed");
    } else if (pid > 0) {
        x++; printf ("x = %d\n", x);
    } else {
        x--; printf ("x = %d\n", x);
    }
}

// Q9
// What are the possible outputs from the execution of this code?
/*
 * 
 */
int main (void)
{
    printf ("Hello\n");
    if (fork () != 0)
        printf ("Gan bei\n");
    else
        printf ("Prost\n");
    printf ("Goodbye\n");
}