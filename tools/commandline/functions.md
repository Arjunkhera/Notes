## Functions

### Some common points to remember

1. Functions start with the function keyword followed by the name of the function and curly brackets ({}).
2. Functions are small, reusable pieces of code that behave just like commands.
3. You can use variables like $1, $2, and $@ in order to provide arguments to functions, just like a Bash script.
4. Use the source command in order to read in a Bash script with function definitions so that you can use your functions in your shell.
5. Use the local keyword to prevent your function from creating or modifying global variables.
6. Be sure to echo the results of your function (if there are any) so that they can be captured with command substitution.

### Structure of a function

```bash
function [name of function] {
  # code here
}
```

### Calling a function

1. Inside the script

```bash
#!/usr/bin/env bash
# File: hello.sh

function hello {
  echo "Hello"
}

hello
hello
hello

# run the bash script following the usual procedure
```

2. From the command line

```bash
#!/usr/bin/env bash
# File: ntmy.sh

function ntmy {
  echo "Nice to meet you $1"
}
```

Use **source** command to call the function
```bash
source  ntmy.sh
ntmy arjunkhera
ntmy mikasaackerman
```

### Simple function to add a sequence of numbers

```bash
#!/usr/bin/env bash
# File: addseq.sh

function addseq {
  sum=0

  for element in $@
  do
    let sum=sum+$element
  done

  echo $sum
}

```

### Local and Global variables

example to demonstrate the difference

```bash
#!/usr/bin/env bash
# File: addseq2.sh

function addseq2 {
  local sum=0

  for element in $@
  do
    let sum=sum+$element
  done

  echo $sum
}
```

Command line
```bash
source addseq.sh
source addseq2.sh
sum=4444
addseq 5 10 15 20

# global declaration overwrites the variable sum
echo $sum

## 50
## 50

sum=4444
addseq2 5 10 15 20
# local declaration does not overwrite the variable sum
echo $sum

## 50
## 4444

# retrieving the value from the function
my_sum=$(addseq2 5 10 15 20)
echo $my_sum

## 50
```
