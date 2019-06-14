#! /usr/bin/env bash

argfirst=$1
argsecond=$2

if [[ ($argfirst =~ [0-9]+) && ($argsecond =~ [0-9]+) ]]
then echo $((argfirst + argsecond))
else  echo -e "$argfirst\n$argsecond"
fi

