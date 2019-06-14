#! /usr/bin/env bash

function isValid {

  testvar=$(echo $1 | egrep "[^0-9]")
  if [[ -z $testvar ]]
  then echo 0
  else echo 1
  fi

}

function check {

  if [[ $1 -lt $num ]]
  then echo 1
  elif [[ $1 -gt $num ]]
  then echo 2
  else echo 0
  fi

}

echo "The directories, if any will be ignored. Only files are counted"
lp=1
num=$(ls -l | egrep "^-" | wc -l)

while [[ $lp -ne 0 ]]
do
  echo -n "Guess the number of files in the directory ? "
  read inp

  if [[ $(isValid $inp) -eq 1 ]]
  then
    echo "The input entered was invalid. Please try again"
    continue
  fi

  lp=$(check $inp)

  if [[ $lp -eq 0 ]]
  then echo "Congratulations! , that is the correct answer"
  elif [[ $lp -eq 1 ]]
  then echo "Your answer was low, please try again"
  else echo "Your answer was high, please try again"
  fi

done
