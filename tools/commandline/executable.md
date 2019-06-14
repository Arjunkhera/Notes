## Executables

### Changing permissions of a file

```bash
chmod [which user/group] [type of change] [what is the change]
```

First we can specify which set of users we’re going to change permissions for:

|Character |	Meaning |
|----------|----------|
|u	| The owner of the file|
|g	| The group that the file belongs to|
|o	| Everyone else|
|a	| Everyone above|

We then need to specify whether we’re going to add, remove, or set the permission:

|Character |	Meaning |
|----------|----------|
|+	| Add permission|
|-	| Remove permission|
|=	| Set permission|

Finally we specify what permission we’re changing:

|Character |	Meaning |
|----------|---------|
|r	| Read a file|
|w	| Write to or edit a file|
|x	| Execute a file|

### Environment variables

1. An environmental variable is a variable that Bash creates where data about your current computing environment is stored.   
2. Environmental variable names use all capitalized letters.  

```bash
echo $HOME
echo $PATH

# to change an environment variable we need to use export command
export PATH=~/Code/Commands:$PATH
```
