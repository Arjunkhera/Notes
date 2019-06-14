#!/usr/bin/env bash

function plier {
  prod=1

  echo -n "The product of numbers $@ is : "

  for i in $@
  do
    let prod=prod\*$i
  done

  echo $prod
}
