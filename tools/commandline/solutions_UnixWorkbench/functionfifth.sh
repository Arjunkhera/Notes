#! /usr/bin/env bash

function fib {

  if [[ $1 -eq 1 ]]
  then
    echo "0"
    return 1
  fi

  count=$(expr $1 - 2)
  a=0
  b=1
  cur=0
  echo -n "0 1 "

  for i in $(eval echo {1..$count})
  do
    let cur=$a+$b
    echo -n "$cur "
    a=$b
    b=$cur
  done

  echo ""
}
