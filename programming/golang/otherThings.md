## More Specifics

### Packages

Importing multiple packages at once is known as factored import statement

---

### Exported names
These are the only variables that can be accessed for a given imported package.  
Exported names always begin with capital letters.  

---

### Go and Interfaces pointer conversions

```go

package main

import (
	"fmt"
	m "math"
)

type errorstring struct {
	str string
}

func (e *errorstring) Error() string {
	return e.str
}

type error interface {
	Error() string
}

func New(str string) error {
	return errorstring{str}
}

func Sqrt(f float64) (float64, error) {
	if f < 0 {
		return 0, New("My name is Arjun Khera")
	}
	// implementation
	return m.Sqrt(f), nil
}

func main() {

	if val, er := Sqrt(-1); er != nil {
		fmt.Println(er)
	} else {
		fmt.Println("The value of square root is ", val)
	}
}
```
Error given:   
./error_implementation.go:21:20: cannot use errorstring literal (type errorstring) as type error in return argument:
	errorstring does not implement error (Error method has pointer receiver)  
Check [this](this) for explanation [ and refer the Pointer Interface portion ](http://jordanorelli.com/post/32665860244/how-to-use-interfaces-in-go)
---

### What is the meaning of backticks?

```go
type data struct {
    id   int32 `json:"ID"`
    name int32 `json:"Name"`
}

``` 

They are known as tags, typically used to dictate named fields while marshalling into other data types. Further reading : [short](https://stackoverflow.com/questions/30681054/what-is-the-usage-of-backtick-in-golang-structs-definition) / [inDepth](https://stackoverflow.com/questions/10858787/what-are-the-uses-for-tags-in-go) 

