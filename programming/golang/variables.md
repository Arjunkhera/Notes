## Variables

```go

package main

import (
	"fmt"
	"reflect"
)

// there is no impicit type conversion in  go unlike c or c++

// variables can also be factored like import statements
var (

    first int = 5
    second string = "arjun"
)

func variables() {
	fmt.Println("Understanding about variables :")

	// definition
	var a int
	// assignment
	a = 5
	fmt.Println("this is an integer : ", a)

	// for type float
	var b float64
	b = 5.6
	fmt.Println("this is a float :", b)

	// auto initialization, like python
    // IMP : the auto initialisation cannot be used outside a function
	c := 7.8
	d := "this is a float"
	fmt.Println(d, ":", c)

	// remember that := is for definition and initialization
	// it can only be used once on a given variable

	// multiple initialization
	var e, f int = 1, 2
	fmt.Println(e, f)

	// initiliazing variables can be done this way
	// however its useless since the compiler itself will figure type of str
	var str string = "this is a string"
	fmt.Println(str)

	// inspecting type rune, for character literals
	check := "a"
	check1 := 'a'
	var check2 rune
	check2 = 'a'
	fmt.Println(check, check1, check2)
	// reflect.TypeOf is used for finding the type
	fmt.Println(reflect.TypeOf(check))
    // or another way to check type is to this method
    fmt.Printf("type is %T",check)
	fmt.Println(reflect.TypeOf(check1))
	fmt.Println(reflect.TypeOf(check2))
}

```
