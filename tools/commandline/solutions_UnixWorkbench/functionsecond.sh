#! /usr/bin/env bash

function isiteven {

  arg=$1

  if [[ $(expr $arg % 2) -eq 0 ]]
  then echo "1"
  else echo "0"
  fi

}
