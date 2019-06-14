## Print 

```go

package main

import "fmt"

func printstatements() {

	a := 5
	b := 13.7143
	c := "world"

	// Println is used for printing non formatted strings
	// It also leaves a newline after printing
	fmt.Println("Hello %s", c, a)

	// using + leaves no space
	// using , generates a space
	fmt.Println("Hello", "world"+"arjun", "here", a)

	// Printf allows us to format strings
	// it is similar to the one used in C
	// and yes it is a lot faster than everything else
	// lastly, no newline -> use \n for that
	fmt.Printf("Hello %s %d\n", c, a)
	// for controlling the
	fmt.Printf("%.2f\n", b)

	// , is not allowed
	// use + to concatenate, no space between strings
	fmt.Printf("Hello" + "world\n")

	str := "this works"
	fmt.Println("Understanding basic operations : " + "voila " + str)

	// arithmetic operations
	fmt.Println("2*3 = ", 2*3)
	fmt.Println("6/2 = ", 6/2)

	// logical operations
	fmt.Println(true && false)
	fmt.Println(true || false)
	fmt.Println(!false)

}

```
