## Pointers

```go

package main

import "fmt"


type Vertex struct {
    X, Y int
}

var (
    v1 = Vertex{1, 2}  // has type Vertex
    v2 = Vertex{X: 1}  // Y:0 is implicit
    v3 = Vertex{}      // X:0 and Y:0
    pp = &Vertex{1, 2} // has type *Vertex
)

func introPointer() {
    i, j := 42, 2701

    p := &i         // point to i
    fmt.Println(*p) // read i through the pointer
    *p = 21         // set i through the pointer
    fmt.Println(i)  // see the new value of i

    p = &j         // point to j
    *p = *p / 37   // divide j through the pointer
    fmt.Println(j) // see the new value of j

    // let us print the address where p is pointing
    fmt.Println(p)

    fmt.Println(pp,v1,v2,v3)
}


```
