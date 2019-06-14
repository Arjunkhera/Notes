#! /usr/bin/env bash

function howodd {
  source functionthird.sh

  total=$#
  totaleven=$(nevens $@)
  let totalodd=$total-$totaleven

  percentage=$(echo  "$totalodd / $total" | bc -l)
  echo "$percentage"

}
