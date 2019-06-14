## Arrays

```go

package main

import "fmt"

func arrays() {

	var arr1 [5]int
	// elements are assigned 0 by default in array
	fmt.Println("the contents of the array are : ", arr1)
	fmt.Println("the length of the array is : ", len(arr1))

	// for initiliazing
	arr2 := [5]int{1, 2, 3, 4}
	fmt.Println("the contents of the array are : ", arr2)

	// for a 2d array
	var arr3 [2][2]int

	for i := 0; i < 2; i++ {
		for j := 0; j < 2; j++ {
			// taking input from the user
			fmt.Scanf("%d", &arr3[i][j])
		}
	}
	fmt.Println("the contents of the array are : ", arr3)

	// arrays can get pretty lengthy during initialization
	// so go allows us to do this
	arr4 := [4]int{
		1,
		2,
		3,
		4,
	}

	// check out notes.md to understand the reason behind this statement
	_ = arr4

	// Notice the extra trailing , after 4. It is a must.
	// This is required by Go and it allows us to
	// easily remove an element from the array by commenting out the line:

	// the 3 dots tell the compiler to find the count itself
	str := [...]string{"Arjun", "Khera", "hello"}

	// to avoid errors caused due to unused variables
	_ = str

	fmt.Println(str)
}

```
