#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "libsais.h"
#include "algorithms.h"

int32_t readText(uint8_t ** text, char file_url[]);

int main(int argc, char const *argv[])
{
    // read data
    char file_url[100] = "../data/";
    uint8_t * text;
    int32_t n = readText(&text, &strcat(file_url, argv[1])[0]);

    for(int32_t i = 0; i < n; i++)
    {
        printf("%c", text[i]);
    }
    printf("\n");

    int32_t * lyndon_arr = (int32_t *)malloc(n * sizeof(int32_t));
    duval(text, lyndon_arr, n);

    free(text);
    free(lyndon_arr);
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
    int32_t n = ftell(file);
    rewind(file);

    *text = (uint8_t *)malloc(n+1);
    (*text)[n] = '\0';

    fread(*text, 1, n, file);
    fclose(file);

    return n;
}
