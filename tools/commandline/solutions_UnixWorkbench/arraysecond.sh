#! /usr/bin/env bash

arrfirst=(1 2 3 4 5)
arrsecond=(6 7 8 9 10)

echo $(expr ${#arrfirst[*]} + ${#arrsecond[*]})
