## Basic Pitfalls

### Go does not support implicit type conversion

```go
// even this is wrong
var x int
var y int64

x = 24
y = 4

z := x/y

// correct way
z := int64(x)/y
```

Check this for more info [stackoverflow](https://stackoverflow.com/questions/13851292/casting-between-number-types-in-golang)
---

### Go does not allow unused variables or libraries :angry:

It is true and very frustrating, especially during debugging.And yeah I started with c and c++. 

However there is a workaround to this

```go
package main

import (
    _ "fmt" // no more error
)

func main() {
    i := 1 // no more error
    _ = i
}
```
Check [this](https://stackoverflow.com/questions/21743841/how-to-avoid-annoying-error-declared-and-not-used-from-golang) out for more info.

--- 

### Everything is passed by Value here, even arrays(imp to note for those coming from c or c++ background)

The following is from go documentation

Arrays are described as follows:

>There are major differences between the ways arrays work in Go and C. In Go, Arrays are values. Assigning one array to another copies all the elements.
In particular, if you pass an array to a function, it will receive a copy of the array, not a pointer to it.
The size of an array is part of its type. The types [10]int and [20]int are distinct.

Functions:

>As in all languages in the C family, everything in Go is passed by value. That is, a function always gets a copy of the thing being passed, as if there were an assignment statement assigning the value to the parameter. For instance, passing an int value to a function makes a copy of the int, and passing a pointer value makes a copy of the pointer, but not the data it points to.  


--- 

### Difference between arrays and slices

In simple terms,

```go
// this creates an array
var arr [4]int

// and these create a slice
var arr []int
arr2 := make([]int,3)
arr3 := arr[1:2]
```

*Slices are always associated with some array, and although they can never be longer than the array, they can be smaller. The make function also allows a 3rd parameter*:
```go
x := make([]float64, 5, 10)
```

*10 represents the capacity of the underlying array which the slice points to.*

**Slicing does not copy the slice's data. It creates a new slice value that points to the original array**.

This makes slice operations as efficient as manipulating array indices. Therefore, modifying the elements (not the slice itself) of a re-slice modifies the elements of the original slice:

```go
d := []byte{'r', 'o', 'a', 'd'}
e := d[2:]
// e == []byte{'a', 'd'}
e[1] = 'm'
// e == []byte{'a', 'm'}
// d == []byte{'r', 'o', 'a', 'm'}
```

---

### IF and ELSE trap

1. using parentheses is not necessary, though you can if you want to. However the braces are required.
2. else has to always be used after the ending brace of parent if

```go
// this will give error
if 7 < 8 {
  fmt.Println("correct")
}
else {
  fmt.Println("incorrect")
}

// correct way
if 7 < 8 {
  fmt.Println("correct")
} else {
  fmt.Println("incorrect")
}
```

