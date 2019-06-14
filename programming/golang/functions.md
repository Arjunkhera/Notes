## Functions

```go

package main

import "fmt"
import "math"

// Here's a function that takes two `int`s and returns
// their sum as an `int`.
func plus(a int, b int) int {

    // Go requires explicit returns, i.e. it won't
    // automatically return the value of the last
    // expression.
    return a + b
}

// When you have multiple consecutive parameters of
// the same type, you may omit the type name for the
// like-typed parameters up to the final parameter that
// declares the type.
func plusPlus(a, b, c int) int {
    return a + b + c
}

func multireturn() (int, int) {
    return 5, 10
}

// variadic function to sum integers
func sum(data ...int) int {
    answer := 0

    for _, val := range data {
        answer += val
    }

    return answer
}

// closures : very important
func increment() func() int {
    i := 0
    return func() int {
        i += 1
        return i
    }
}

func factorial(num int) int {

    if num == 1 {
        return 1
    }

    return factorial(num-1) * num
}

// functions with named return values are known as naked functions
// should only be used in short functions as they harm readability
func split(sum int) (x, y int) {
    x = sum * 4 / 9
    y = sum - x
    return
}

// you can pass functions using their signatures 
func compute(fn func(float64, float64) float64) float64 {
    return fn(3, 4)
}

func fnpassing() {
    hypot := func(x, y float64) float64 {
        return math.Sqrt(x*x + y*y)
    }
    fmt.Println(hypot(5, 12))

    fmt.Println(compute(hypot))
    fmt.Println(compute(math.Pow))
}


func function_intro() {

    // Call a function just as you'd expect, with
    // `name(args)`.
    res := plus(1, 2)
    fmt.Println("1+2 =", res)

    res = plusPlus(1, 2, 3)
    fmt.Println("1+2+3 =", res)

    // for returning multiple arguments
    a, b := multireturn()
    fmt.Println("The values returned are :", a, b)

    // variadic functions : functions with varible number of arguments
    fmt.Println("The sum is :", sum(1, 2, 3))
    fmt.Println("The sum is :", sum(1, 2, 3, 4, 5, 6))
    // we can also send a slice but not an array
    arr := []int{1, 2, 3}
    fmt.Println("The sum is :", sum(arr...))

    // initializing a object with a function
    inc := increment()
    fmt.Println(inc())
    fmt.Println(inc())

    // we observe that i is again set to 0
    incNew := increment()
    fmt.Println(incNew())

    // program to calculate factorial
    num := 5
    fmt.Println("The factorial of", num, "is", factorial(num))

    

}

```
