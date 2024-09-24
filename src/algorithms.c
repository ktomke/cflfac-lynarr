#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include "libsais.h"
#include "algorithms.h"

/**
 * Duvals algorithm. It computes the CFL factorization of a word.
 * @param w [0..n-1] The input string.
 * @param lyndon_arr [0..n-1] The output Lyndon array.
 * @param n The length of the given string. 
*/
void duval(uint8_t* w, int32_t* lyndon_arr, int32_t n) {
    int k = 0;
    int i,j;
    while (k < n)
    {
        i = k;
        j = k + 1;
        while (true)
        {
            if (j == n || w[j] < w[i])
            {
                while (k <= i)
                {   
                    lyndon_arr[k] = j - i;
                    k += j - i;
                }
                break;
            }
            else
            {
                if (w[j] > w[i])
                {
                    i = k;
                }
                else
                {
                    i++;
                }
            }
            j++;
        }
    }
}

/**
 * rDuval utelizes Duvals algorithm recursively fo compute the Lyndon array.
 * @param w [0..n-1] The input string.
 * @param lyndon_arr [0..n-1] The output Lyndon array.
 * @param n The length of the given string. 
*/
void rDuval(uint8_t* w, int32_t* lyndon_arr, int32_t n) {
    duval(&w[0], lyndon_arr, n);

    unsigned long len;
    unsigned long l = 0;
    while (l < n)
    {
        len = lyndon_arr[l];
        if (len > 1)
        {
            rDuval(&w[l+1], &lyndon_arr[l+1], len-1);
        }
        l += len;
    }
}

/**
 * LRMISA calculates CFL factorization by calculatin the LRM of ISA 
 * @param w [0..n-1] The input string.
 * @param LRM [0..n-1+fs] The output Lyndon array.
 * @param n The length of the given string.
 * @param fs Extra space available at the end of NSV array (0 should be enough for most cases).
 * @param freq [0..255] The output symbol frequency table (can be NULL).
*/
void lrmisa(const uint8_t * w, int32_t * LRM, int32_t n, int32_t fs, int32_t * freq) {
    // compute SA
    libsais(w, LRM, n, fs, freq); // NOTE: at this point LRM is SA

    // invert SA
    int32_t *ISA = (int32_t *)malloc(n * sizeof(int32_t));
    for (int32_t i = 0; i < n; i++) 
    {
        ISA[LRM[i]] = i;
    }

    // compute LRM of ISA
    int32_t min = ISA[0];
    int32_t min_index = 0;
    for (int32_t i = 1; i < n; i++)
    {
        if (ISA[i] < min)
        {   
            LRM[min_index] = i - min_index;
            min = ISA[i];
            min_index = i;
        }
    }
    LRM[min_index] = n - min_index;
    
    free(ISA);
}

/**
 * NSVISA calculates Lyndon array by calculatin the NSV of ISA 
 * @param w [0..n-1] The input string.
 * @param NSV [0..n-1+fs] The output Lyndon array.
 * @param n The length of the given string.
 * @param fs Extra space available at the end of NSV array (0 should be enough for most cases).
 * @param freq [0..255] The output symbol frequency table (can be NULL).
*/
void nsvisa(const uint8_t * w, int32_t * NSV, int32_t n, int32_t fs, int32_t * freq) {
    // compute SA
    libsais(w, NSV, n, fs, freq); // NOTE: at this point NSV is SA

    // invert SA
    int32_t *ISA = (int32_t *)malloc(n * sizeof(int32_t));
    for (int32_t i = 0; i < n; i++) 
    {
        ISA[NSV[i]] = i;
    }

    // compute NSV of ISA
    int32_t *index_stack = (int32_t *)malloc(n * sizeof(int32_t));
    int32_t stack_i = -1;

    for (int32_t i = 0; i < n; i++) {
        while (stack_i >= 0 && ISA[index_stack[stack_i]] > ISA[i]) {
            NSV[index_stack[stack_i]] = i - index_stack[stack_i];
            stack_i--;
        }
        stack_i++;
        index_stack[stack_i] = i;
    }
    while (stack_i >= 0) {
        NSV[index_stack[stack_i]] = n - index_stack[stack_i];
        stack_i--;
    }

    free(index_stack);
    free(ISA);
}
