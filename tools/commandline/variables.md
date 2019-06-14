## Variables

---

### Naming conventions of variables

1. Every character should be lowercase.
2. The variable name should start with a letter.
3. The name should only contain alphanumeric characters and underscores (_).
4. Words in the name should be separated by underscores.

### Never put space in between equals sign

```bash
# wrong
check = 5
# right
check=5
```
### Use let command to modify a variable

```bash
let newcheck=$check+1
echo $newcheck

### storing results of commands in variable

```bash
numberoflines=$(cat math.sh | wc -l)
echo $numberoflines
```

### Accessing arguments in bash

```bash
echo "Script arguments: $@"
echo "First arg: $1. Second arg: $2."
echo "Number of arguments: $#"
```

```bash
#!/usr/bin/env bash
# File: repseq.sh

sequence=$(eval echo {$1..$2})

for i in $sequence
do
  compute=$(echo "$i % $3" | bc)
  result="$result $compute"
done

echo $result
```

### reading input from file

```bash
#! /usr/bin/env bash

echo "input something"
read inp
echo "the input was $inp"
```
