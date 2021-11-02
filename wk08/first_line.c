#include<stdio.h>

// ./first_line file.txt
int main(int argc, char **argv) {
    // 0. Check that there are correct # of args.
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <filename>\n", argv[0]);
        return 1;
    }
    // 1. Open the file.
    FILE *fp = fopen(argv[1], "r");
    if (fp == NULL) {
        perror(argv[1]);
        return 1;
    }

    // 2. Read the first line and print it.
    int ch;
    while ( (ch = fgetc(fp)) != '\n') {
        fputc(ch, stdout);
    }
    // 3. Close the file.
    fclose(fp);
    
    return 0;
}