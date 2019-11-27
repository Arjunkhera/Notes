# Bash Scripting

## Semantics

1. [Basics](basics.md)
2. [Variables](variables.md)
3. [Conditionals](conditionals.md)
4. [Loops](loops.md)
5. [Maths](maths.md)
6. [Arrays](arrays.md)
7. [Functions](functions.md)
8. [Files](files.md)
9. [Executable](executable.md)
10. [Regex](regex.md)

[Basic Programs](basicPrograms.md)

I once did the Unix WorkBench Course from Cousera. It is really great for beginners, I highly recommend doing it if you are just starting out. 
Just in case somebody needs the solutions, all of them are available here : [solutions]()

## Miscellaneous

### Tete with Grep

1. Searching for text in files. Check [this](https://askubuntu.com/questions/55325/how-to-use-grep-command-to-find-text-including-subdirectories) out.

### Understanding Shell expansion

[String Interpolation](https://en.wikipedia.org/wiki/String_interpolation#Bash)

[Difference between single and double quotes](https://www.gnu.org/software/bash/manual/html_node/Shell-Expansions.html#Shell-Expansions)


### Exit code of a bash statement

```bash
echo $?
```

a successfull run gives output as 0  
True exits with 0  
False exits with 1

### Brace expansion

```bash
echo {0..9}
## 0 1 2 3 4 5 6 7 8 9
echo b{0..4}c
## b0c b1c b2c b3c b4c
## 1 2 3 a b c

start=4
end=9
echo {$start..$end}
eval echo {$start..$end}
## {4..9}
## 4 5 6 7 8 9

echo {Who,What,Why,When,How}?
## Who? What? Why? When? How?
```  

### Moving certain files

**Step 1 : store the file names in a text file**

```bash
ls | egrep ".*.md" > filename.txt
```

**Step 2 : parsing the file line by line**

```bash
while read -r line
do
  mv $line /path/to/the/directory
done > filename.txt
```
---

# Ubuntu 

## Miscellaneous

1. [Displaying battery percentage in gnome](batterypercentage.md)


