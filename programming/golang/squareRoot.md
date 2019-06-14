## Finding Square Root

```go

package main

import (
	"fmt"
	m "math"
)

const EPSILON = 0.001

func Sqrt(x float64) float64 {

	answer := 1.0
	i := 1

	for {
		fmt.Printf("loop number is %d and value of z is %f \n", i, answer)

		val := (answer*answer - x) / (2 * answer)

		if val == 0 || m.Abs(val) < EPSILON {
			return answer
		}

		answer -= val
		i++
	}

	return answer
}

func main() {
	var input float64
	fmt.Scanf("%f", &input)
	fmt.Println("the input value is ", input)
	fmt.Println(Sqrt(input))
	fmt.Println("the actual value is : ", m.Sqrt(input))
}

```
