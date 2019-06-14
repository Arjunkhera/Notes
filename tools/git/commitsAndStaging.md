## Commits and Staging

### Some basic commands

[Look here for more information](https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository)  

There are two types of files
1. Untracked files
2. Tracked files -> may or may not be modified

Anything added to the staging area means its to put in the next commit

```bash
# if you need a succint script
git status -s
```

### Some examples for .gitignore

[Collection of useful .gitignore templates](https://github.com/github/gitignore)  

The rules for the patterns you can put in the .gitignore file are as follows:

Blank lines or lines starting with # are ignored.

Standard glob patterns work, and will be applied recursively throughout the entire working tree.

You can start patterns with a forward slash (/) to avoid recursivity.

You can end patterns with a forward slash (/) to specify a directory.

You can negate a pattern by starting it with an exclamation point (!).

```bash
# ignore all .a files
*.a

# but do track lib.a, even though you're ignoring .a files above
!lib.a

# only ignore the TODO file in the current directory, not subdir/TODO
/TODO

# ignore all files in the build/ directory
build/

# ignore doc/notes.txt, but not doc/server/arch.txt
doc/*.txt

# ignore all .pdf files in the doc/ directory and any of its subdirectories
doc/**/*.pdf
```

### Comparing changes

**Note**

1. git diff shows only changes for modified unstaged files
2. git diff --staged shows changes for staged files since last commit

### Removing staged files

```bash

// deletes the file upon next commit
git rm filename

// use force flag if same file is both staged as well as removed
git rm -f alreadystagefile

// to unstage specific files, can use regex here
git rm --cached filename  

```

### Some cheeky commands

```bash

// skips the need to stage, this commits all tracked modified files
git commit -a

```
