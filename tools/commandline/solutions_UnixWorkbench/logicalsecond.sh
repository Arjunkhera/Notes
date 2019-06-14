#! /usr/bin/env bash

arg=$1

if [[ $(expr $arg % 2) -eq 0 ]]
then echo "Number is even"
else echo "Number is odd"
fi
