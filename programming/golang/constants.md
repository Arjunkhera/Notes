## Constants

```go

package main

import (
	"fmt"
	"reflect"
	// provides an alias
	m "math"
)


func changesToInt(x int) int {
    return x+1
}

func changesToFloat(x float64) float64{
    return x+0.1
}

func constants() {

	// const test is wrong, you need initiliaze it
	// go supports constants of
	// char,string,bool and numeric values
	const n = 50000000

	const d = 3e20 / n
	fmt.Println("the value of d is :", d, "the type of d is:", reflect.TypeOf(d))

	// a constant has no type untill its given one, such as an explicit cast
	fmt.Println(int64(d))

	// A number can be given a type by using it in a context that requires one,
	// such as a variable assignment or function call.
	// For example, here math.Sin expects a float64.
	fmt.Println(m.Sin(n))

    
    const testVal = 1<<2
    // an untyped constant takes the type needed by its context
    fmt.Println(changesToInt(testVal))
    fmt.Println(changesToFloat(testVal))

    fmt.Println("End of this function")
}

```
