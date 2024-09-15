#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "algorithms.h"
#include "libsais.h"

int32_t readText(uint8_t ** text, char file_url[]);

int main(int argc, char const *argv[])
{
    // read data
    char file_url[100] = "../data/";
    uint8_t * text;
    int32_t n = readText(&text, &strcat(file_url, argv[1])[0]);

    int32_t * lrm = (int32_t *)malloc(n * sizeof(int32_t));
    lrmisa(text, lrm, n, 0, NULL);

    free(text);
    free(lrm);
    return 0;
}

int32_t readText(uint8_t ** text, char file_url[]) {
    FILE *file = fopen(file_url, "r");
    
    if (file == NULL)
    {
        perror("Could not read file");
        return -1;
    }

    fseek(file, 0, SEEK_END);
    int32_t n = ftell(file) - 1;
    rewind(file);

    *text = (uint8_t *)malloc(n+1);
    (*text)[n] = '\0';
    
    fread(*text, 1, n, file);
    fclose(file);

    return n;
}
