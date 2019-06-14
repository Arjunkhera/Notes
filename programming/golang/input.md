## Taking Input

```go

package main

import "fmt"

// Remember : here we are returning a slice header and not the whole array
// consult differences between slice and array for more details

func input(arr []int) []int {

	fmt.Println("Enter the elements of the array")
	for i := 0; i < len(arr); i++ {
		fmt.Scanf("%d", &arr[i])
	}

	return arr
}

```
