## Finding Average

```go

package main

func average(arr []int) float32 {

	avg := 0
	for _, i := range arr {
		avg += i
	}

	return float32(avg) / float32(len(arr))
}

```
