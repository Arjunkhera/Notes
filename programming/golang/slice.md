## Slices

```go

package main

import (
	"fmt"
	"reflect"
)

func slices() {

	// A slice can be created with the built-in
	// function called make, which has the signature,
	// func make([]T, len, cap) []T
	// here cap is optional capacity

	// slices basically function like lists in python
	arr := make([]int, 3)
	fmt.Println("this is a slice:", arr)
	fmt.Println("the type of the slice is :", reflect.TypeOf(arr))
	fmt.Println("the length of the slice is :", len(arr))

	s := make([]string, 1)
	s[0] = "a"
	s = append(s, "r")
	s = append(s, "j")
	s = append(s, "u")
	fmt.Println(s)

	// copying the contents of a slice
	c := make([]string, len(s)-1)

	// as the size of c is one less,the last element will not be copied
	copy(c, s)

	// or just let the compiler do the hard work
	d := s
	fmt.Println("this is a copy of s with len-1:", c)
	fmt.Println("this is too is a copy of s :", d)

	s = append(s, "n")

	// another way to use append
	ss := append(s, " kh", "era")
	// this change will be reflected in s as it points to the same location
	ss[0] = "c"
	fmt.Println("the new value of s is :", s)
	fmt.Println("the new value of ss is :", ss)

	// however, as c and d had new space allocated for themselves,change is not relfected here
	fmt.Println("the new value of d is :", d)
	fmt.Println("the new value of c is :", c)

	fmt.Println(s[:3])
	l := s[1:4]
	fmt.Println("the contents of l are :", l)
	fmt.Println("the type of a slice of string slice is :", reflect.TypeOf(l))

	// Slices can be composed into multi-dimensional data structures.
	// The length of the inner slices can vary, unlike with multi-dimensional arrays.
	twoD := make([][]int, 3)
	for i := 0; i < 3; i++ {
		innerLen := i + 1
		twoD[i] = make([]int, innerLen)
		for j := 0; j < innerLen; j++ {
			twoD[i][j] = i + j
		}
	}
	fmt.Println("2d: ", twoD)

	stra := []byte{'r', 'o', 'a', 'd'}
	strb := stra[2:]

	strb[1] = 'm'
	strb = append(strb, 'm')

	// note that the changing of 'd' to 'm' in strb is aslo relfected in a
	fmt.Println("stra is :", stra)
	fmt.Println("strb is :", strb)

	// here is a slice of structures
	bigSlice := []struct {
		a, b int
	}{
		{1, 2},
		{3, 4},
	}

	// some good examples
	interesting()
	morefunctionality()

}

func interesting() {
	s := []int{2, 3, 5, 7, 11, 13}
	printSlice(s)

	// Slice the slice to give it zero length.
	s = s[:0]
	printSlice(s)

	// Extend its length.
	s = s[:4]
	printSlice(s)

	// Drop its first two values.
	s = s[2:5]
	printSlice(s)

	// Extending beyond the capacity
	s = s[2:2]
	printSlice(s)

	s = s[:2]
	printSlice(s)

	// we also have empty slices which have a value of nil
	var ss []int
	fmt.Println(s, len(s), cap(s))
	if ss == nil {
		fmt.Println("nil!")
	}

	// here are some more examples
	a := make([]int, 5)
	printSlice("a", a)

	b := make([]int, 0, 5)
	printSlice("b", b)

	c := b[:2]
	printSlice("c", c)

	d := c[2:5]
	printSlice("d", d)

}

func printSlice(s []int) {
	fmt.Printf("len=%d cap=%d %v\n", len(s), cap(s), s)
}

func morefunctionality() {
	// Create a tic-tac-toe board.
	board := [][]string{
		[]string{"_", "_", "_"},
		[]string{"_", "_", "_"},
		[]string{"_", "_", "_"},
	}

	// The players take turns.
	board[0][0] = "X"
	board[2][2] = "O"
	board[1][2] = "X"
	board[1][0] = "O"
	board[0][2] = "X"

	for i := 0; i < len(board); i++ {
		fmt.Printf("%s\n", strings.Join(board[i], " "))
	}

	s := []struct {
		i int
		t bool
	}{
		{1, true},
		{2, false},
	}
	fmt.Println(s)
}

```
