## Conditional Statements

```go

package main

import (
	"fmt"
	"reflect"
	"time"
)

func conditionals() {

	ifelse()
	introswitch()

}

func ifelse() {

	if 7%2 == 0 {
		fmt.Println("7 is even")
	} else {
		fmt.Println("7 is odd")
	}

	// A statement can precede conditionals; any variables
	// declared in this statement are available in all branches.
	if num := 9; num < 0 {
		fmt.Println(num, "is negative")
	} else if num < 10 {
		fmt.Println(num, "has 1 digit")
	} else {
		fmt.Println(num, "has multiple digits")
	}

	// invalid because the scope of num is the if conditional only
	//fmt.Println("the value of num is :", num)
}

func introswitch() {

	i := 6

	// Print does not produce a newline
	fmt.Print("Write ", i, " as ")
	switch i {
	case 1:
		fmt.Println("one")
	// we can use multiple statements in case, comma here is representative of or
	case 2, 6:
		fmt.Println("two")
	case 3:
		fmt.Println("three")
	default:
		fmt.Println("no option matches")
	}

	// we can also use conditionals in switch statements
	t := time.Now()
	switch {
	case t.Hour() < 12:
		fmt.Println("It's before noon")
	default:
		fmt.Println("It's after noon")
	}

	// A type switch compares types instead of values
	whatAmI := func(i interface{}) {
		switch t := i.(type) {
		case bool:
			fmt.Println("I'm a bool")
		case int:
			fmt.Println("I'm an int")
		default:
			fmt.Printf("Don't know type %T\n", t)
		}
	}

	fmt.Println(reflect.TypeOf(whatAmI))

	whatAmI(true)
	whatAmI(1)
	whatAmI("hey")
}

```
