## Regex

### searching through text files : grep & egrep
```bash
grep "pattern" filename.txt
egrep "pattern" filename.txt
```

### find command to search files and directories

```bash
find -flag directorytobesearched "pattern"
```

### metacharacters and their meanings

|Metacharacter	 | Meaning               |
|----------------|-----------------------|
|.               |Any Character          |
|\w              |A Word                 |
|\W              |Not a Word             |
|\d	             |A Digit                |
|\D	             |Not a Digit            |
|\s	             |Whitespace             |
|\S	             |Not Whitespace         |
|[def]	         |A Set of Characters    |
|[^def]	         |Negation of Set        |
|[e-q]	         |A Range of Characters  |
|^	             |Beginning of String    |
|$	             |End of String          |
|\n	             |Newline                |
|+	             |One or More of Previous|
|*	             |Zero or More of Previous|
|?	             |Zero or One of Previous|
|\|	             |Either the Previous or the Following|
|{6}	           |Exactly 6 of Previous  |
|{4, 6}	         |Between 4 and 6 or Previous|
|{4, }	         |More than 4 of Previous |


If you want to specify a range of characters you can use a hyphen (-) inside of the square brackets. For example the regular expression [e-q] matches all of the lowercase letters between “e” and “q” in the alphabet inclusively. Case matters when you’re specifying character sets, so if you wanted to only match uppercase characters you’d need to use [E-Q]. To ignore the case of your match you could combine the character sets with the [e-qE-Q] regex (short for regular expression), or you could use the -i flag with grep to ignore the case. Note that the -i flag will work for any provided regular expression, not just character sets.

### to print the line of the match
```bash
egrep "pattern" -n filename.txt
```
