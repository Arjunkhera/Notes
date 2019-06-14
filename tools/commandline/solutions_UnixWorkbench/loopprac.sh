#! /usr/bin/env bash

# program to print numbers in a given range
printtill=$1

for i in $(eval echo {1..$printtill})
do
	echo $i
done
