## Errors Basics

```go

package main

import (
	"fmt"
	m "math"
)

type errorstring struct {
	str  string
	data int
}

/*
func (e *errorstring) Error() string {
	return e.str
}
*/
func (e *errorstring) Display() {
	fmt.Println(e.str, e.data)
}

type error interface {
	Error() string
	Display()
}

func New(str string) error {
	return &errorstring{str, 42}
}

func Sqrt(f float64) (float64, error) {
	if f < 0 {
		return 0, New("My name is Arjun Khera")
	}
	// implementation
	return m.Sqrt(f), nil
}

func main() {
	/*
		if val, er := Sqrt(-1); er != nil {
			fmt.Println(er)
		} else {
			fmt.Println("The value of square root is ", val)
		}
	*/
	check := New("My name is matt damon")
	//fmt.Println(check.Error())
	//check.Display()
	fmt.Println(check)
	/*
		fmt.Println(reflect.TypeOf(check))
		var a int
		fmt.Println(reflect.TypeOf(a))
	*/
}

```
