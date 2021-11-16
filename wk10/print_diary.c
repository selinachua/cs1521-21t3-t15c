#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Print the contents of the file $HOME/.diary
int main(int argc, char **argv) {
    // 1. Build the /Users/selina/.diary string 
    // char diary_pathname[7] = ".diary";
    // char *home_pathname = getenv("HOME");

    // int size = strlen(diary_pathname) + strlen(home_pathname) + 2;
    // char pathname[size];
    // snprintf(pathname, size, "%s/%s", home_pathname, diary_pathname);

    char *pathname = build_pathname();

    // 2. Open the $HOME/.diary file
    FILE *diary = fopen(pathname, "r");
    if (!diary) {
        perror(pathname);
        return 1;
    }

    // 3. Print out its contents. 
    int ch;
    while ( (ch = fgetc(diary)) != EOF ) {
        fputc(ch, stdout);
    }

    // 4. Close the file.
    fclose(diary);

    return 0;
}