## Loops

```go

package main

import "fmt"

func loops() {

	// Note: Unlike other languages like C, Java, or JavaScript there are
	// no parentheses surrounding the three components of the for
	// statement and the braces { } are always required.

	i := 0
	for i <= 3 {
		fmt.Println(i)
		i = i + 1
	}

	for j := 1; j <= 2; j++ {
		fmt.Println(j)
	}

	// for without a condition will loop repeatedly until you
	// break out of the loop or return from the enclosing function.
	for {
		fmt.Println("loop")
		break
	}

	// intro to continue
	for n := 0; n <= 5; n++ {
		if n%2 == 0 {
			continue
		}
		fmt.Println(n)
	}

	// C's while is same as for in Go.
	i = 0
	for i < 3 {
		fmt.Print(i, " ")
		i++
	}

}

```

