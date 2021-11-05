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
 * The counting sort function for test case n. 1 was taken here:
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
 *
 * You can find the complete project on GitHub:
 * https://github.com/scov8/CommonAssignment-Team02
 */

#ifndef COUNTINGSORT_H_ /* Include guard */
#define COUNTINGSORT_H_

/** macros to get execution time: both macros have to be in the same scope
*   define a double variable to use in ENDTIME before STARTTIME:
*   double x;
*   the variable will hold the execution time in seconds.
*/

#include <time.h>

/* Token concatenation used */
#define STARTTIME(id)                           \
  clock_t start_time_42_##id, end_time_42_##id; \
  start_time_42_##id = clock()

#define ENDTIME(id, x)        \
  end_time_42_##id = clock(); \
  x = ((double)(end_time_42_##id - start_time_42_##id)) / CLOCKS_PER_SEC

void generateArray(ELEMENT_TYPE *, int, int);
void countSort(ELEMENT_TYPE *, int, int);                   //Test case n. 1
void countSortOn(ELEMENT_TYPE *, ELEMENT_TYPE *, int, int); //Test case n.2

#endif