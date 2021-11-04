/* 
 * Course: High Performance Computing 2021/2022
 * 
 * Lecturer: Francesco Moscato	fmoscato@unisa.it
 *
 * Group:
 * Rosa Gerardo	     0622701829	 g.rosa10@studenti.unisa.it               
 * Scovotto Luigi    0622701702  l.scovotto1@studenti.unisa.it 
 * Tortora Francesco 0622701700  f.tortora21@studenti.unisa.it
 *
 * Copyright (C) 2021 - All Rights Reserved
 *
 * This file is part of CommonAssignment1.
 *
 * Requirements: Parallelize and Evaluate Performances of "COUNTING SORT" Algorithm ,by using OpenMP.
 *  
 * The previous year's group 02 files proposed by the professor during the course were used for file generation and extraction.
 * 
 * The counting sort function was taken here:
 * https://github.com/ianliu/programacao-paralela/blob/master/omp-count-sort/main.c
 *
 * CommonAssignment1 is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * CommonAssignment1 is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with CommonAssignment1.  If not, see <http://www.gnu.org/licenses/>.
 */
/**
	@file countingsort.c
*/
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#include "countingsort.h"

#ifdef _OPENMP
#include <omp.h>
#else
#define get_thread_num() 0
#endif

/**
 * @brief This function initializes the data structure to be sorted.
 * @param a a pointer to an empty array which must be populated with random numbers.    
 * @param n size of A.
 * @param threads threads number of threads.
 */
void generateArray(ELEMENT_TYPE a[], int n, int threads)
{
    unsigned int seed = time(NULL);
#pragma omp parallel num_threads(threads) shared(a, n, seed)
    {
#pragma omp for
        for (int i = 0; i < n; i++)
        {
            a[i] = (rand_r(&seed) % 10000);
        }
    }
}

/**
 * @brief This function sorts an array according to the counting sort algorithm using optimized loops using optimized for loop.
 * @param a          a pointer to an array which must be sorted.
 * @param n          size of a.
 * @param threads    number of threads.
 */
void countSort(ELEMENT_TYPE a[], int n, int threads)
{
    int i, j, count;
    // Temporary array used for swap
    ELEMENT_TYPE *temp = (ELEMENT_TYPE *)malloc(n * sizeof(ELEMENT_TYPE));
#pragma omp parallel default(none) shared(a, n, temp) private(i, j, count) num_threads(threads)
#pragma omp for
    for (i = 0; i < n; i++)
    {
        count = 0;
        for (j = 0; j < n; j++)
        {
            if (a[j] < a[i])
                count++;
            else if (a[j] == a[i] && j < i)
                count++;
        }
        temp[count] = a[i];
    }
#pragma omp for
    for (i = 0; i < n; i++)
        memcpy(a + i, temp + i, sizeof(ELEMENT_TYPE));
    free(temp);
}
