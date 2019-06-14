## Functions

### A. Functions

1. If the values are not provided in the call, they are taken as undefined.
2. We can provide functions as defualt parameters also.

```JavaScript
function showMessage(from, text = anotherFunction()) {
  // anotherFunction() only executed if no text given
  // its result becomes the value of text
}
```

Also, anotherFunction is called whenever showMessage is called without a parameter. This is in contrast to languages like python where the call to anotherFunction is
iterpreted only once.  

3. Old editions of JavaScript did not support default parameters. So there are alternative ways to support them, that you can find mostly in the old scripts.

4. A function with an empty return or without it returns undefined.

```javascript
function doNothing() { /* empty */ }
alert( doNothing() === undefined ); // true

function doNothing() {
  return;
}
alert( doNothing() === undefined ); // true
```

5. Never add a newline between return and the value. JavaScript expects a semicolon after the return statement.

```javascript
//For a long expression in return, it might be tempting to put it on a separate line, like this:

return
 (some + long + expression + or + whatever * f(a) + f(b))
//That doesn’t work, because JavaScript assumes a semicolon after return. That’ll work the same as:

return;
 (some + long + expression + or + whatever * f(a) + f(b))
//So, it effectively becomes an empty return. We should put the value on the same line instead.


```

### B. Function expressions

```JavaScript

// declaration
let sayHi = function() {
  alert( "Hello" );
};

// printing the function definition
alert(sayHi);

// calling the function
sayHi();

```

### C. Callback functions

```JavaScript
// original implementation
function ask(question, yes, no) {
  if (confirm(question)) yes()
  else no();
}

function showOk() {
  alert( "You agreed." );
}

function showCancel() {
  alert( "You canceled the execution." );
}

// usage: functions showOk, showCancel are passed as arguments to ask
ask("Do you agree?", showOk, showCancel);

// using expressions
function ask(question, yes, no) {
  if (confirm(question)) yes()
  else no();
}

ask(
  "Do you agree?",
  function() { alert("You agreed."); },
  function() { alert("You canceled the execution."); }
);

```

**Note :**  
**A Function Expression is created when the execution reaches it and is usable from then on.**

Once the execution flow passes to the right side of the assignment let sum = function… – here we go, the function is created and can be used (assigned, called etc) from now on.

Function Declarations are different.

**A Function Declaration is usable in the whole script/code block.**

In other words, when JavaScript prepares to run the script or a code block, it first looks for Function Declarations in it and creates the functions. We can think of it as an “initialization stage”.

And after all of the Function Declarations are processed, the execution goes on.

As a result, a function declared as a Function Declaration can be called earlier than it is defined.

**Example :**
```javascript
// declaration
sayHi("John"); // Hello, John

function sayHi(name) {
  alert( `Hello, ${name}` );
}

// expression
sayHi("John"); // error!

let sayHi = function(name) {  // (*) no magic any more
  alert( `Hello, ${name}` );
};
```
**When to choose Function Declaration versus Function Expression?**  

As a rule of thumb, when we need to declare a function, the first to consider is Function Declaration syntax, the one we used before. It gives more freedom in how to organize our code, because we can call such functions before they are declared.

It’s also a little bit easier to look up function f(…) {…} in the code than let f = function(…) {…}. Function Declarations are more “eye-catching”.

…But if a Function Declaration does not suit us for some reason (we’ve seen an example above), then Function Expression should be used.

### D. Arrow functions

```javaScript
// this piece of code
let func = function(arg1, arg2, ...argN) {
  return expression;
}

// is the same as
let func = (arg1, arg2, ...argN) => expression

```
**Few examples :**
```javaScript
let sum = (a, b) => a + b;

/* The arrow function is a shorter form of:

let sum = function(a, b) {
  return a + b;
};
*/

alert( sum(1, 2) ); // 3

// if there are no arguments
let sayHi = () => alert("Hello!");

sayHi();

// another example
let age = prompt("What is your age?", 18);

let welcome = (age < 18) ?
  () => alert('Hello') :
  () => alert("Greetings!");

welcome(); // ok now
```
**Arrow functions are handy for one-liners. They come in two flavors:**  

1. Without figure brackets: (...args) => expression – the right side is an expression: the function evaluates it and returns the result.
2. With figure brackets: (...args) => { body } – brackets allow us to write multiple statements inside the function, but we need an explicit return to return something.
