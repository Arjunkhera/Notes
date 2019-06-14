## Struct

```go

package main

import "fmt"

// This `person` struct type has `name` and `age` fields.
type person struct {
	name string
	age  int
}

// passing by pointer
func (per *person) input() {
	fmt.Println("Enter the name of the person")
	fmt.Scanf("%s", &per.name)

	fmt.Println("Enter the age of the person")
	fmt.Scanf("%d", &per.age)
}

// passing by value
func (per person) display() {
	fmt.Println("The name of the person is:", per.name)
	fmt.Println("The age of the person is:", per.age)
}

func structures() {

	// This syntax creates a new struct.
	fmt.Println(person{"Bob", 20})

	// You can name the fields when initializing a struct.
	fmt.Println(person{name: "Alice", age: 30})

	// Omitted fields will be zero-valued.
	fmt.Println(person{name: "Fred"})

	// An `&` prefix yields a pointer to the struct.
	fmt.Println(&person{name: "Ann", age: 40})

	// Access struct fields with a dot.
	s := person{name: "Sean", age: 50}
	fmt.Println(s.name)

	// You can also use dots with struct pointers - the
	// pointers are automatically dereferenced.
	sp := &s
	fmt.Println(sp.age)

	// Structs are mutable.
	sp.name = "Arjun"
	s.age = 21
	sp.display()

	// using methods for a structure
	newstruct := person{}
	newstruct.input()
	newstruct.display()
}

```
