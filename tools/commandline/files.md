## Files

### Creating a file

1. touch filename
2. output redirection
```bash
echo "my name is arjun khera" > arjun.txt
```

**note**
in output redirection, single arrow means replace and double arrow means append

### Scrutinising a text document

wc : word count,displays the #lines #words #characters #filename

**viewing a file**

1. cat : displays the whole content

2. less : displays in the form of pages
  - slow traversal : use arrow keys to change pages
  - fast traversal : use b to go up,spacebar to go down
  - q to exit

3. head : first ten lines of file
4. tail : last ten lines of file

### comparing two files

1. diff  : prints the differing lines amongst the two files
2. sdiff : prints the contents side by side

### generating hashes of files

1. md5
2. shasum
