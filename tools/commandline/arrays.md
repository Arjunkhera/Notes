## Arrays

### Some basic array operations

```bash
# creating an array
arr=(1 2 3 4 5)
# referencing an element
echo ${arr[0]}
# changing an element
arr[0]=0
# printing all elements
echo ${arr[*]}
# referencing a range
echo ${arr[*]:2:4}
# finding the length
echo ${#arr[*]}
# appending to an array
arr+=(6 7 8)
echo ${arr[*]}
```
