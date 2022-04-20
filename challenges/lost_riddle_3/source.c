// You may use either a newline separated file
// or stdin to input answers. Each subsequent
// riddle will only be unlocked after all prior
// riddles have been solved.

// Hint: if answer involves numbers, separate them with a space

#include <stdio.h>
#include <stdlib.h>
#include "source.h"

FILE* input_file;

void riddle_one(char* line);
void riddle_two(char* line);
void riddle_three(char* line);

int main(int argc, char* argv[]) {
    char line[256];

    // Parse Input File (if applicable)
    if(argc == 1)
        input_file = stdin;
    else if(argc == 2) {
        input_file = fopen(argv[1], "r");
        if(!input_file) {
            fprintf(stdout, "Error: Can't open \'%s\'\n", argv[1]);
            exit(-1);
        }
    }
    else {
        fprintf(stdout, "Usage: %s [file]\n", argv[0]);
        exit(-1);
    }

    fprintf(stdout, "Ever tried solving a riddle without hearing it?\n");
    fprintf(stdout, "Now is the perfect opportunity to try.\n");

    // Riddle 1
    fgets(line, 256, input_file);
    riddle_one(line);
    fprintf(stdout, "On to the next one.\n");

    // Riddle 2
    fgets(line, 256, input_file);
    riddle_two(line);
    fprintf(stdout, "Last one!\n");

    // Riddle 3
    fgets(line, 256, input_file);
    riddle_three(line);
    fprintf(stdout, "Great job! You've solved all my lost riddles.\n");
}