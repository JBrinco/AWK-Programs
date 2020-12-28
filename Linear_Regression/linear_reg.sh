#!/bin/sh

#Takes three arguments: first is the calbration CSV, separated by comma, with concentration in first field and signal in second.
#Second argument is the file with real signal values to calculate
#Third argument is the output file where the results are going.

awk -f .calibration.awk $1
awk -f .coeficient.awk $1
awk -f .calculation.awk $2

rm temp && rm temp2
mv results "$3"
