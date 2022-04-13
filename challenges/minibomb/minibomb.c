#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdlib.h>
void printFlag() {
    [REDACTED]
}

int main(int argc, char* argv[]) {
    char* password = "s3curE_p@$$w0rD";
    int32_t key = 1364283729;
    int32_t alpha = 1094795585;
    int32_t beta = 286331153;
    char buffer[15];

    printf("Enter the password: ");
    fflush(stdout);
    gets(buffer, stdin);

    if (strncmp(buffer,password,15) != 0) {
	printf("Wrong password.\n");
	fflush(stdout);
	return 0;
    }

    if (key ^ alpha == beta && alpha == 305419888) {
	printFlag();
	return 0;
    }

    if (beta != 286331153) {
        if (alpha != 1094795585) {
            printf("You're already there, just change the value of this variable!\n");
	    fflush(stdout);
        } else {
            printf("Almost there, finish overwriting this variable.\n");
	    fflush(stdout);
        }
    }
    return 0;
}
