#! /usr/bin/env bash

# for calling functionfirst
source functionfirst.sh
plier 2 3
plier 2 3 4

# for calling functionsecond
source functionsecond.sh
isiteven 4
isiteven 5

# for calling functionthird
source functionthird.sh
nevens 2 3 4 5
nevens 2 4 6 8 9

# for calling functionfourth
source functionfourth.sh
howodd 2 3 4 5
howodd 2 4 6 8 9

# for calling functionfifth
source functionfifth.sh
fib 4
fib 10  
