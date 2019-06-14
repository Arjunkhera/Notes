## Conditionals

### A. Interation [alert,prompt,confirm]

```javascript
// alert
alert(message);

// prompt
prompt(message,default_value);

// console.log
let booleanvalue = confirm(message);
```

**All these methods are modal: they pause the script execution and don’t allow the visitor to interact with the rest of the page until the message has been dismissed.**

There are two limitations shared by all the methods above:

1. The exact location of the modal window is determined by the browser. Usually it’s in the center.
2. The exact look of the window also depends on the browser. We can’t modify it.

### B. Conditional operators

```javascript
// ifelse
if(condition){

}else{

}

// ternary
let answer = (condition)?true_result:false_result;

// switch
switch(x) {
  case 'value1':  // if (x === 'value1')
    ...
    break

  case 'value2':  // if (x === 'value2')
    ...
    break

  default:
    ...
    break
}
```
**condition = false [0,"",null,undefined,NA]**

try this code
```javascript
alert( alert(1) || 2 || alert(3) );
```
* the reasoning for the output can be figured from the fact that alert does not have a return value,and the value hence interpreted is undefined.
* A double NOT !! is sometimes used for converting a value to boolean type.
* The precedence of the AND && operator is higher than OR ||, so it executes before OR.

### C. Loops

```javascript
// while loop
while (condition) {
  // code
  // so-called "loop body"
}

// do while loop
do {
  // loop body
} while (condition);

// for loop
for (begin; condition; step) {
  // ... loop body ...
}
```
* If there were no i++ in the example above, the loop would repeat (in theory) forever. In practice, the browser provides ways to stop such loops, and for server-side JavaScript we can kill the process.

* Please note that syntax constructs that are not expressions cannot be used in '?'. In particular, directives break/continue are disallowed there.
