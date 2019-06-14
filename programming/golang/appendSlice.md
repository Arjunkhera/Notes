## Append Slices

```go

package main

import (
	"fmt"
)

func AppendSlice(s []int, data ...int) []int {

	original_size := len(s)
	input_size := len(data)
	new_size := original_size + input_size

	if new_size > cap(s) {
		tempSlice := make([]int, (new_size+1)*2)
		copy(tempSlice, s)
		s = tempSlice
	}
	copy(s[original_size:new_size], data)

	return s
}

func main() {

	s := []int{1, 2, 3}
	fmt.Println("The original contents of s are :", s)

	// appending data to s
	s = AppendSlice(s, 4, 5, 6, 7, 8)

	// after appending
	fmt.Println("The modified contents of s are :", s)
}

```
