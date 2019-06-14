#! /usr/bin/env bash

function nevens {
  source functionsecond.sh

  sum=0
  for i in $@
    do
      answer=$(isiteven $i)
      if [[ $answer -eq 1 ]]
      then let sum=sum+1
      fi
    done
  echo "$sum"

}
