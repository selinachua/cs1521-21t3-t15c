// remove public write from specified as command line arguments if needed

#include <stdio.h>
#include <stdlib.h>
#include <sys/_types/_s_ifmt.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>

void chmod_if_needed(char *pathname);

int main(int argc, char *argv[]) {
    for (int arg = 1; arg < argc; arg++) {
        chmod_if_needed(argv[arg]);
    }
    return 0;
}

// chmod a file if publically-writeable

void chmod_if_needed(char *pathname) {
    // 1. Get file metadata.
    struct stat info;
    int success = stat(pathname, &info);
    if (success == -1) {
        fprintf(stderr, "Stat on %s failed.\n", pathname);
        exit(1);
    }

    // 2. Check if file is publically writable - if OTH can write.
    // Use flags to check if OTH can write. S_IWOTH
    if ((info.st_mode & S_IWOTH) == 0) {
        printf("%s is not publically writable.\n", pathname);
        return;
    }

    // 3. Remove OTH write permission using `chmod` function.
    mode_t new_mode = info.st_mode & ~S_IWOTH;
    chmod(pathname, new_mode);
}