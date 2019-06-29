## Arrays

In Java, an array has the following important features:

1. an array is a reference type;
2. all array's elements are stored in the memory sequentially ;
3. each element of the array is accessed by its numerical index, the first element has the index 0;
4. the last element is accessed by the index equal to array size - 1;
5. it is possible to create an array to store elements of any type.


To create an array filled with elements we should:

1. declare a variable of an array type (declaration);
2. create an instance of the array object (instantiation);
3. initialize the array by some values (initialization).

### Declaration

```java
int[] array;

// less used
int array[];
```

### Instantiating and Initialising

```java

// when size and elements are known
int[] numbers = { 1, 2, 3, 4 }; // an array of 1, 2, 3, 4

// when size is not known
int[] numbers = new int[n];

// separating declaration and instantiation
int[] numbers;
numbers = new int[n];

// or this way, do all three
float[] floatNumbers; // declaration 
floatNumbers = new float[] { 1.02f, 0.03f, 4f }; // instantiation and initialization

```

### Other things

```java

// length
int[] array = {1,2,3} ;
System.out.println(array.length);

// converting to string
byte[] famousNumbers = { 0, 1, 2, 4, 8, 16, 32, 64 };
String arrayAsString = Arrays.toString(famousNumbers); 

// we cannot index a string in java like an array
System.out.println(arrayAsString.charAt(4));

// checking equality
int[] numbers1 = { 1, 2, 5, 8 };
int[] numbers2 = { 1, 2, 5 };
int[] numbers3 = { 1, 2, 5, 8 };

System.out.println(Arrays.equals(numbers1, numbers2)); // it prints "false"
System.out.println(Arrays.equals(numbers1, numbers3)); // it prints "true"

// filling characters
int size = 10;
char[] characters = new char[size];

// It takes an array, start index, end index (exclusive) and the value for filling the array
Arrays.fill(characters, 0, size / 2, 'A'); 
Arrays.fill(characters, size / 2, size, 'B');

System.out.println(Arrays.toString(characters)); // it prints [A, A, A, A, A, B, B, B, B, B]
```
