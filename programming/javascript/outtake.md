## Quick Outtake

### Data types 
1. number
2. string
3. boolean
4. object
5. undefined
6. function

### Programming Constructors
1. var
2. if then else
3. switch case
4. for
5. for in
6. wile
7. try catch
8. function

### API's
1. typeOf
2. Array
3. Math
4. Regex
5. timer (setTimeout, clearTimeout, setInterval, clearInterval)


```javascript
// objects
var obj = {
    id : 100,
    name : "magesh",
    salary : 10000
}

// accessing attributes of object
emp.id
emp.name
emp['id']

// we can add functions as attributes too
// but there is confusion, is the author trying to get a new value or updating an old one
emp.whoAmI = function() {
}

// JS convention
// you use the dot notation only when you are updating an existing value
// so the following means you are adding a new function, even though dot can do both the tasks
emp['whoAmI'] = function(){
}

// calling the function
emp.whoAmI();

// looping through an object
for(var key in obj){
    console.log(key);
}

// skipping functions through traversal
for(var key in obj){
    if(typeof emp[key] !== 'function')
        console.log(key, emp[key])
}
```

### Functions

```javascript

// function expression
var add = function(x,y) {
    return x+y;
}

// functions themselves are objects
// functions are callable objects
function fn() {
}

// functions can also have attributes, as they are objects themselves
fn['id'] = 100
fn.id

// and they can have methods too
fn['whoAmI'] = function() {
    console.log('I am a function');
}
fn.whoAmI();

```

1. In javascript it does not matter where the functions
2. But where the function is invoked
3. In the following example the function is invoked as a method of the object 
4. Hence the reason why this refers to emp. 
5. Not because it is defined inside the object.

```javascript
var emp = {
    name: 'magesh'
    whoAmI : function() {
        console.log("i am", this.name);
    }
}

emp.whoAmI() // I am magesh

// now we have changed the context
var externalRef = emp.whoAmI;
whoAmI() // I am 
// hence no name exists and we get an empty string 
// as a function -> this becomes global scope(window), and window has no attribute names `name`
```

When you invoke a function
1. From an object : then the *this* context is the object
2. As function itself : the context is *window*
3. Dynamic Context : use *call* and *apply*

**Dynamic Context**
```javascript

function whoAmI(){
    console.log("I am ", this.name)
}

var emp = {
    name : 'Magesh'
}

// static method
// this method is correct
// but it establishes a long term relationship
emp['whoAmI'] = whoAmI;
emp.whoAmI();

// so we use call
// here we dynamically set the context to emp
whoAmI.call(emp)
whoAmI.apply(emp)

// The following examples shows how arguments are passed in call and apply
function greet(salutation, message){
    console.log(salutation + this.name + ',' + message);
}

// one way
emp['greet'] = greet;
emp.greet('Mr', 'Have a nice day');

// another way
greet.call(emp, 'Mr', 'Have a nice day');

// using apply
greet.apply(emp, ['Mr', 'Have a nice day'];
```

1. There are six ways of calling/invoking a function
2. The difference is : *what is the this context*
3. In some cases the this context is fixed and in some cases the context is variable

```javascript

function fn() {
    console.log('fn is invoked')
}

//method 1
fn()

// method 2
// through an object
var obj = {}
obj['fn'] = fn;
obj.fn()

// method 3 
// funtions have inbuilt methods call and apply
fn.call();
fn.apply();

// method 4  
// destroying function after invocation
// known as immediately invoked function
// or closures
(function() {
    console.log('fn is invoked');
})()
```
1. If you want to hide any variable or functionality, then use functions
2. A variable inside the function is garabge collected after the function is invoked
3. Closures are way of extending the life of variable outside the function life

**How does a closure work**
1. Outer Function is declared
2. Variable in the outer function is declared
3. Inner function is declared
4. Variable in the outer function is referred and used in the inner function. It is available because of lexical scoping
6. Do something, by which the lifetime of the inner function is extended beyond the lifetime of the outer function. This extends the life of the variable too

## ECMAScript ES6

The following were introduced
1. let
2. const

**Why**
1. variables declared using var is not block scoped
2. Check this out : *variable hoisting*

```javascript
for(var i = 0; i < 10; i++){
}

console.log(i); // correct
```

### Newer methods
The following section covers some new mechanisms introduced in ES6

1. Array Destructuring
```javascript
var numbers = [1,2,3]

// imperative
var x = numbers[0];
var y = numbers[1];

// array destructuring
var [x, y] = numbers;

// swapping two numbers
[x,y] = [y,x]
```

2. RestOperator and SpreadOperator

```javascript
// restOperator
// using ... on the left hand side of the expression 
var numbers = [1,2,3,4]
var [x,y, ...z] = numbers; // three dots represent the rest Operator

// spreadOperator
// using ... on the right hand side of the expression
var newNumbers = [...numbers, 10,20] // [1,2,3,4,10,20]
```

3. Destructuring, RestOperator and SpreadOperator for Objects

```javascript
var emp = {
    id = 100,
    name: 'Magesh'
    salary:1000
}

// usual method
var id = emp.id, salary = emp.salary;

// newer method
var {id, salary} = emp
// we can use different names too
var {id:x, salary:y} = emp

// rest operator in objects
var {id:x, ...z} = emp
// x : 100
// z = {name:'',salary"}

var newEmp = {...emp, org:'Adobe'}
// {id,name,salary,org}
```

4. Default arguments in functions

```javascript
// default arguments(functions)
function(x,y){
    return x+y;
}

// newer way
function(x = 10, y = 10){
    return x+y;
}
```

5. Lambda functions

```javascript
// arrow/lambda functions
var add = (x,y) => {
    return x+y;
}
// or 
var add = (x,y) => x+y;
```

6. String templatin

```javascript
// String templating 
var x = 10,y = 20;

// older method
var s1 = "values of x is:" + x + "values of y is:" + y;

// newer method
var s2 = `values of x is ${x} and values of y is ${y}`
// adding a line break is also possible
var s3 = `values of x is ${x} 
and values of y is ${y}`
// prints on two separate lines
```

7. Classes

```javascript
// in javascript, you can make functions behave like classes
// these functions are known as constructor functions
// we have class from ES6
// in js the name of the java constructor is constructor
class Employee {
    id = 0;
    name = '';
    salary = 0;
    
    constructor(id, name, salary){
        this.id = id;
        this.name = name;
        this.salary = salary;
    }
    
    display(){
        console.log(`id=${this.id}, name=${this.name}, and salary=${this.salary}`);
    }
}

// inheritence in classes 
class FulltimeEmployee extends Employee{
    benefits = '';
    constructor(id, name, salary, benefits){
        super(id,name,salary);
        this.benefits = benefits;
    }
}
```

---

[For](For) more ES6 features [check this out](http://es6-features.org)



