#include <stdio.h>

int main(void) {
	int i = 0;

	do {
		i++;

		printf("%d", i);
		printf("\n");
	} while (i < 10);

	return 0;
}

int main(void) {
	int i = 0;

	do_label:
		i++;

		printf("%d", i);
		printf("\n");
    while_label:
        if (i < 10) goto do_label; // if not, it will just keep running the next lines.

	return 0;
}