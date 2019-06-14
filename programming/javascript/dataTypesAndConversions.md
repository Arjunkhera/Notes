## Data Type and Conversions

### A. Data Types

1. Number  
      - This includes both integers and floating values. Also, there are two special types of numbers.  
      - Division by zero is possible and results in special type of number known as **infinity**.  
      - Undefined operation on numbers results in **NaN**.       
2. String

```javascript
let name = "John";

// embed a variable
alert( `Hello, ${name}!` ); // Hello, John!

// embed an expression
alert( `the result is ${1 + 2}` ); // the result is 3
```

strings are immutable.
```javascript
let name = "arjun";

// the following statement will have no effect
name[0] = "g";

// thought you can do the following
name = "khera";
```

3. Boolean
4. Null  
    - In JavaScript null is not a “reference to a non-existing object” or a “null pointer” like in some other languages. It’s just a special value which has the sense of “nothing”, “empty” or “value unknown”.
5. Undefined  
    - The special value undefined stands apart. It makes a type of its own, just like null.
    - The meaning of undefined is “value is not assigned”.
    - If a variable is declared, but not assigned, then its value is exactly undefined

6. Object
7. Symbol

### B. Typeof operator

It supports two forms of syntax:

1. As an operator: typeof x.
2. Function style: typeof(x).


```javascript
typeof undefined // "undefined"
typeof 0 // "number"
typeof true // "boolean"
typeof "foo" // "string"
typeof Symbol("id") // "symbol"
typeof Math // "object"  (1)
typeof null // "object"  (2)
typeof alert // "function"  (3)
```

### C. Conversions

1. to string

```javascript
let value = true;
alert(typeof value); // boolean

value = String(value); // now value is a string "true"
alert(typeof value); // string
```

2. to number

```javascript
alert( "6" / "2" ); // 3, strings are converted to numbers

let str = "123";
alert(typeof str); // string

let num = Number(str); // becomes a number 123

alert(typeof num); // number
```
rules  

- undefined	: NaN
- null	: 0
- true and false	: 1 and 0
- string :	Whitespaces from the start and the end are removed. Then, if the remaining string is empty, the result is 0. Otherwise, the number is “read” from the string. An error gives NaN.

**Note**
Almost all mathematical operations convert values to numbers. With a notable exception of the addition +. If one of the added values is a string then the other one is also converted to a string. Then it concatenates (joins) them:  

```javascript
 alert( 1 + '2' ); // '12' (string to the right)
alert( '1' + 2 ); // '12' (string to the left)
```

That only happens when at least one of the arguments is a string. Otherwise, values are converted to numbers.

3. to boolean

Values that are intuitively “empty”, like 0, an empty string, null, undefined and NaN become false. Other values become true.

```javascript
alert( Boolean(1) ); // true
alert( Boolean(0) ); // false

alert( Boolean("hello") ); // true
alert( Boolean("") ); // false

alert( Boolean("0") ); // true
alert( Boolean(" ") ); // spaces, also true (any non-empty string is true)
```

### Another method of converting strings to numbers 

+stringvar is equivalent to Number(stringvar)

```javascript

let first = "2";
let second = "3"; 

// would give output : 23
alert(first + second); 

// would give output : 5
alert(+first + +second);

```

### Equal to return the assigned result

let a = 1;
let b = 2;

let c = 3 - (a = b + 1);

alert( a ); // 3
alert( c ); // 0

