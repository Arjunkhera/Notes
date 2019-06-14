## Binary Search

```go

package main

import "fmt"

func main() {

	fmt.Println("Binary Search")

	fmt.Println("Enter the size of the array")
	var n int32
	fmt.Scanf("%d", &n)

	fmt.Println("Enter the elements of the array")
	var arr [100]int32

	for i := int32(0); i < n; i++ {
		fmt.Scanf("%d", &arr[i])
	}

	fmt.Println("the array entered is: ")
	for i := int32(0); i < n; i++ {
		fmt.Printf("%d ", arr[i])
	}
	fmt.Println()

	var element int32
	fmt.Println("Enter the element to be searched")
	fmt.Scanf("%d", &element)

	start := int32(0)
	end := n - 1

	for {
		if start > end {
			fmt.Println("the element is not present in the array")
			break
		}

		mid := (start + end) / 2

		if arr[mid] == element {
			fmt.Println("the element is present in the array at index ", mid)
			break
		}

		if element < arr[mid] {
			end = mid - 1
		}
		if element > arr[mid] {
			start = mid + 1
		}
	}
}

```
