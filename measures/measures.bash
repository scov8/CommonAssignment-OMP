#!/bin/bash
# 
# Course: High Performance Computing 2021/2022
# 
# Lecturer: Francesco Moscato	fmoscato@unisa.it
#
# Group:
# Rosa Gerardo	     0622701829	 g.rosa10@studenti.unisa.it               
# Scovotto Luigi    0622701702  l.scovotto1@studenti.unisa.it 
# Tortora Francesco 0622701700  f.tortora21@studenti.unisa.it
#
# Copyright (C) 2021 - All Rights Reserved
#
# This file is part of CommonAssignment1.
#
# Requirements: Parallelize and Evaluate Performances of "COUNTING SORT" Algorithm ,by using OpenMP.
# 
# The previous year's group 02 files proposed by the professor during the course were used for file generation and extraction.
#
# The counting sort function was taken here:
# https://github.com/ianliu/programacao-paralela/blob/master/omp-count-sort/main.c
#
# CommonAssignment1 is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# CommonAssignment1 is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with CommonAssignment1.  If not, see <http://www.gnu.org/licenses/>.
#


TIME_STAMP=$(date +%s)
NMEASURES=50

ARRAY_RC=(50000000 100000000 150000000 200000000)
ARRAY_THS=(0 1 2 4 8 16 32)
TIMEFORMAT='%3U;%3E;%3S;%P'
ARRAY_OPT=(0 1 2 3)

trap "exit" INT

SCRIPTPATH=$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )

#-p for ref
if [[ $1 == "-p" ]]; then
	for size in "${ARRAY_RC[@]}"; do
		for opt in "${ARRAY_OPT[@]}"; do
			ths_str=$(printf "%02d" $ths)
			if [[ $opt -eq 0 ]]; then
				continue;
			else
				OUT_FILE=$SCRIPTPATH/measure/SIZE-$size-O$opt/SIZE-$size-NTH-00-O$opt.csv
			fi
			OUT_LINK=$SCRIPTPATH/measure/SIZE-$size-O$opt/SIZE-$size-NTH-00-O0.csv
			OUT_FILE_LINK=$SCRIPTPATH/measure/SIZE-$size/SIZE-$size-NTH-00-O0.csv

			if [[ -f "$OUT_FILE.old" ]]; then
				rm $OUT_LINK
				mv $OUT_FILE.old $OUT_FILE
			else
				ln -srf $OUT_FILE_LINK $OUT_LINK
				mv $OUT_FILE $OUT_FILE.old
			fi
		done
	done
elif [[ $1 == "-k" ]]; then
	for size in "${ARRAY_RC[@]}"; do
		for ths in "${ARRAY_THS[@]}"; do
			for opt in "${ARRAY_OPT[@]}"; do
				ths_str=$(printf "%02d" $ths)
				
				if [[ $opt -eq 0 ]]; then
					OUT_FILE=$SCRIPTPATH/measureOn/SIZE-$size/SIZE-$size-NTH-$ths_str-O$opt.csv
				else
					OUT_FILE=$SCRIPTPATH/measureOn/SIZE-$size-O$opt/SIZE-$size-NTH-$ths_str-O$opt.csv
				fi
	
				if [[ $opt -eq 0 && $ths -ne 0 ]]; then
					continue;
				fi
			
				mkdir -p $(dirname $OUT_FILE) 2> /dev/null
				
				echo $(basename $OUT_FILE)
				echo "dimarray,threads,init,countingsort,user,elapsed,sys,pCPU" >$OUT_FILE
				
				for ((i = 0 ; i < $NMEASURES	; i++)); do
					if [[ $ths -eq 0 ]]; then
						(time $1/programOn_seq_O$opt $size $ths )2>&1 | sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/;/g' -e 's/,/./g' -e 's/;/,/g' >> $OUT_FILE
						printf "\r> %d/%d %3.1d%% " $(expr $i + 1) $NMEASURES $(expr \( \( $i + 1 \) \* 100 \) / $NMEASURES)
						printf "#%.0s" $(seq -s " " 1 $(expr \( $i \* 40 \) / $NMEASURES))
					else
						(time $1/programOn_O$opt $size $ths )2>&1 | sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/;/g' -e 's/,/./g' -e 's/;/,/g' >> $OUT_FILE
						printf "\r> %d/%d %3.1d%% " $(expr $i + 1) $NMEASURES $(expr \( \( $i + 1 \) \* 100 \) / $NMEASURES)
						printf "#%.0s" $(seq -s " " 1 $(expr \( $i \* 40 \) / $NMEASURES))
					fi
				done
				printf "\n"
			done
		done
	done
else
	for size in "${ARRAY_RC[@]}"; do
		for ths in "${ARRAY_THS[@]}"; do
			for opt in "${ARRAY_OPT[@]}"; do
				ths_str=$(printf "%02d" $ths)
				
				if [[ $opt -eq 0 ]]; then
					OUT_FILE=$SCRIPTPATH/measure/SIZE-$size/SIZE-$size-NTH-$ths_str-O$opt.csv
				else
					OUT_FILE=$SCRIPTPATH/measure/SIZE-$size-O$opt/SIZE-$size-NTH-$ths_str-O$opt.csv
				fi
	
				if [[ $opt -eq 0 && $ths -ne 0 ]]; then
					continue;
				fi
			
				mkdir -p $(dirname $OUT_FILE) 2> /dev/null
				
				echo $(basename $OUT_FILE)
				echo "dimarray,threads,init,countingsort,user,elapsed,sys,pCPU" >$OUT_FILE
				
				for ((i = 0 ; i < $NMEASURES	; i++)); do
					if [[ $ths -eq 0 ]]; then
						(time $1/program_seq_O$opt $size $ths )2>&1 | sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/;/g' -e 's/,/./g' -e 's/;/,/g' >> $OUT_FILE
						printf "\r> %d/%d %3.1d%% " $(expr $i + 1) $NMEASURES $(expr \( \( $i + 1 \) \* 100 \) / $NMEASURES)
						printf "#%.0s" $(seq -s " " 1 $(expr \( $i \* 40 \) / $NMEASURES))
					else
						(time $1/program_O$opt $size $ths )2>&1 | sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/;/g' -e 's/,/./g' -e 's/;/,/g' >> $OUT_FILE
						printf "\r> %d/%d %3.1d%% " $(expr $i + 1) $NMEASURES $(expr \( \( $i + 1 \) \* 100 \) / $NMEASURES)
						printf "#%.0s" $(seq -s " " 1 $(expr \( $i \* 40 \) / $NMEASURES))
					fi
				done
				printf "\n"
			done
		done
	done
fi

