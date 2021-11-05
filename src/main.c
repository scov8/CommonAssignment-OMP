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
	@file main.c
*/

#include "countingsort.h"
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char const *argv[])
{
    int dimarray, threads;
    double time_countsort = 0.0, time_init = 0.0;

    if (argc < 3)
    {
        printf("ERROR! Usage: ./main dimarray threads");
        exit(1);
    }
    dimarray = atoi(argv[1]); //write the dimension of array
    threads = atoi(argv[2]);  //choose the number of threads

    //Array initialization
    ELEMENT_TYPE *A = (ELEMENT_TYPE *)calloc(dimarray, sizeof(ELEMENT_TYPE));

    STARTTIME(1);
    //Generation of random numbers in the array A
    generateArray(A, dimarray, threads);
    ENDTIME(1, time_init);

    STARTTIME(2);
    //Array sorting according to counting sort algorithm
    countSort(A, dimarray, threads);
    ENDTIME(2, time_countsort);

    //Print the sorted array
    /*
    printf("The ordered array is:\n");
    for (int i = 0; i < dimarray; i++)
        printf("%lf ", A[i]);
    */

    printf("%d;%d;%f;%f\n", dimarray, threads, time_init, time_countsort);

    //Test
    /*
    int flag = 1;
    for (int i = 1; i < dimarray; i++)
        if (A[i] < A[i - 1])
            flag = 0;

    
    if (flag == 1)
        printf("\nThe algorithm works");
    else
        printf("\nThe algorithm does NOT work");
    */
    free(A);
    return 0;
}
