#! /usr/bin/env bash

number=$1

if [[ number -lt 0 ]]
then
  eval echo {$1..0}
else
  eval echo {0..$1}
fi  
