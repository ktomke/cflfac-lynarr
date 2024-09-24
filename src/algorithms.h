#ifndef ALGORITHMS_H
#define ALGORITHMS_H

#include <stdint.h>

/**
 * Duvals algorithm. It computes the CFL factorization of a word.
 * @param w [0..n-1] The input string.
 * @param lyndon_arr [0..n-1] The output Lyndon array.
 * @param n The length of the given string. 
*/
void duval(uint8_t* w, int32_t* lyndon_arr, int32_t n);

/**
 * rDuval utelizes Duvals algorithm recursively fo compute the Lyndon array.
 * @param w [0..n-1] The input string.
 * @param lyndon_arr [0..n-1] The output Lyndon array.
 * @param n The length of the given string. 
*/
void rDuval(uint8_t* w, int32_t* lyndon_arr, int32_t n);

/**
 * LRMISA calculates CFL factorization by calculatin the LRM of ISA 
 * @param w [0..n-1] The input string.
 * @param LRM [0..n-1+fs] The output Lyndon array.
 * @param n The length of the given string.
 * @param fs Extra space available at the end of NSV array (0 should be enough for most cases).
 * @param freq [0..255] The output symbol frequency table (can be NULL).
*/
void lrmisa(const uint8_t * w, int32_t * LRM, int32_t n, int32_t fs, int32_t * freq);

/**
 * NSVISA calculates Lyndon array by calculatin the NSV of ISA 
 * @param w [0..n-1] The input string.
 * @param NSV [0..n-1+fs] The output Lyndon array.
 * @param n The length of the given string.
 * @param fs Extra space available at the end of NSV array (0 should be enough for most cases).
 * @param freq [0..255] The output symbol frequency table (can be NULL).
*/
void nsvisa(const uint8_t * w, int32_t * NSV, int32_t n, int32_t fs, int32_t * freq);

#endif