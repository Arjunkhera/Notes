## Maps

```go

package main

import "fmt"

func maps() {

    // a nil map has no keys and nor can keys be added
    // so we cannot even add keys to nilMap here
    var nilMap map[int]string


	// defining a map
	map_first := make(map[int]string)

	// assigning values
	map_first[1] = "Arjun"
	map_first[2] = "Khera"

	fmt.Println("The contents of the map are :", map_first)
	// getting the contents of a single key
	fmt.Println("The value of key 1 is : ", map_first[1])

	// deleting a key-value pair
	delete(map_first, 2)

	// checking if a key is present or not
	// returns value and bool(key present or not)
	val, prs := map_first[2]

	switch prs {
	case true:
		fmt.Println("The key has a value : ", val)
		break
	case false:
		fmt.Println("The key is not present in the map")
	}

	//declaring and initializing in the same line
	n := map[string]int{"foo": 1, "bar": 2}
	fmt.Println("map:", n)
}

```

