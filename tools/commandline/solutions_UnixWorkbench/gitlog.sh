#! /usr/bin/env bash

git log > commitslog.txt

days=(Mon Tue Wed Thu Fri Sat Sun)
maxcoms=0
currcoms=0
maxday="Default"

for i in ${days[*]}
do
  currcoms=$(cat commitslog.txt | egrep "$i" | wc -l)
  echo "The number of commits done on $i are $currcoms"
  if [[ $currcoms > $maxcoms ]]
    then
    maxcoms=$currcoms
    maxday=$i
  fi
done

echo "The maximum commits were done on $maxday"
