## Conditionals

**conditional expression are always placed between double brackets [[]]**

### Common Logical Flags

| Logical Flag	| Meaning	Usage |
|--------------|----------------|
|-gt	| Greater Than 	[[ $planets -gt 8 ]]|
|-ge	| Greater Than or Equal To	[[ $votes -ge 270 ]]|
|-eq	| Equal	[[ $fingers -eq 10 ]]|
|-ne	| Not Equal	[[ $pages -ne 0 ]]|
|-le	| Less Than or Equal To	[[ $candles -le 9 ]]|
|-lt	| Less Than	[[ $wives -lt 2 ]]|
|-e	  | A File Exists	[[ -e $taxes_2016 ]]|
|-d	  | A Directory Exists	[[ -d $photos ]]|
|-z	  | Length of String is Zero	[[ -z $name ]]|
|-n	  | Length of String is Non-Zero	[[ -n $name ]]|

### Common Logical Operators

| Logical Operator	| Meaning	Usage |
|-------------------|---------------|
|=~	| Matches Regular Expression	[[ $consonants =~ [aeiou] ]]|
|=	| String Equal To	[[ $password = "pegasus" ]]|
|!=	| String Not Equal To	[[ $fruit != "banana" ]]|
|!	| Not	[[ ! "apple" =~ ^b ]]|


### Getting the output of a logical operation

```bash
[[ 7 -gt 3 ]] && echo "True" || echo "False"
```

### IF-Else in bash

```bash
#!/usr/bin/env bash
# File: simpleelif.sh

if [[ $1 -eq 4 ]]
then
  echo "$1 is my favorite number"
elif [[ $1 -gt 3 ]]
then
  echo "$1 is a great number"
else
  echo "You entered: $1, not what I was looking for."
fi
```

### Few points to remember

1. All Bash programs have an exit status. true has an exit status of 0 and false has an exit status of 1.
2. Conditional execution uses two operators: AND (&&) and OR (||) which you can use to control what command get executed based on their exit status.
3. Conditional expressions are always in double brackets ([[ ]]). They have exit an exit status of 0 if they contain a true assertion or 1 if they contain a false assertion.
4. IF statements evaluate conditional expressions. If an expression is true then the code within an IF statement is executed, otherwise it is skipped.
5. ELIF and ELSE statements also help control the flow of a Bash program, and IF statements can be nested within other IF statements.
