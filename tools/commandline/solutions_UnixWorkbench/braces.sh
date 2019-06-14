#! /usr/bin/env bash 

filename=$1
count=$2

touch $(eval echo $filename{1..$count})
