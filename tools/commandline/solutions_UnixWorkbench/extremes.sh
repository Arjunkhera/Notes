#! /usr/bin/env bash

min=$1
max=$1

for i in $@
do
  if [[ $i -gt max ]]
  then let max=$i
  fi

  if [[ $i -lt min ]]
  then let min=$i
  fi
done

echo "The minimum is : $min"
echo "The maximum is : $max"
