#! /usr/bin/env bash

num=$#
first=$1
res=$(expr $num \* $first)

echo "The product is : $res"
