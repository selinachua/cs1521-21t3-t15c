#include <stdio.h>
#include <sys/_types/_s_ifmt.h>
#include <sys/stat.h>

// ./stat filename
int main(int argc, char **argv) {
    // Use the stat function to get file information.
    struct stat info;
    int success = stat(argv[1], &info);
    if (success == -1) {
        fprintf(stderr, "Stat on %s failed.\n", argv[1]);
        return 1;
    }

    // Print the size of the file.
    printf("Size of file: %ld bytes\n", (long)info.st_size);

    // Using macros.
    if (S_ISDIR(info.st_mode) == 1) {
        printf("%s is a directory.\n", argv[1]);
    }

    // Using flags.
    if ((info.st_mode & S_IXOTH) != 0) {
        printf("Other has execute permission.\n");
    }

    return 0;
}