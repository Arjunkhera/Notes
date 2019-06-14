#! /usr/bin/env bash


input=$1

echo "$input"

if [[ $input =~ ^[A-Z] ]]
then echo "how proper"
else echo "not proper"
fi
