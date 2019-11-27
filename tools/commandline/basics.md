## Basics

---

### Main directories

1. root directory /
2. home directory ~

--- 

### Search the purpose of a command in the manual

```bash
man [command]
```
1. use / to search strings in the manual
2. page up/down options are the same as those for more/less options

### Searching for a command

```bash
apropos keyword
```
---

### Structure of commands

[commands] [options] [arguments]

options are usually preceded by '-'

--- 

### Common Commands for traversing directories

path can be of two types
1. absolute
2. relative

'.' represents the current directory

1. ls     : list all files and directories
2. cd     : change directory
3. pwd    : print working directory
4. echo   : print anything on the console
5. mkdir  : make new directory
6. touch  : make new file
7. mv source destination : can also be used to rename a file or directory
8. cp sourcefile destinationfolder : use cp -r to copy a directory
10. rm filename
11. rm -rf directoryname

**other ways of deleting a file**
```bash
unlink filename
find /your/filename -delete
shred -u filename
```
