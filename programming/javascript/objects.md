## Objects

### A. Two ways of creating objects

```javascript
let user = new Object(); // "object constructor" syntax
let user = {};  // "object literal" syntax

// get fields of the object:
alert( user.name ); // John
alert( user.age ); // 30

// adding a value
user.isAdmin = true;
// deleting a value
delete user.age;

// multiword property name must be quoted
let user = {
  name: "John",
  age: 30,
  "likes birds": true, // this last comma is optional  
};
```

### B. Difference between using dot and square operator

need to use square brackets for multiline property names
```javascript
alert( user["likes birds"] );
```

also, square brackets can take value during runtime or from a variable. For example
```javascript
let key = "likes birds";

// same as user["likes birds"] = true;
user[key] = true;

// or another way could be
let user = {
  name: "John",
  age: 30
};

let key = prompt("What do you want to know about the user?", "name");

// access by variable
alert( user[key] ); // John (if enter "name")
```

### C. Computed properties

We can delay assinging name to the variable untill runtime.

```javascript
let fruit = prompt("Which fruit to buy?", "apple");

let bag = {
  [fruit]: 5, // the name of the property is taken from the variable fruit
};

alert( bag.apple ); // 5 if fruit="apple"
// this is also correct
alert( bag[fruit] );

```

We can also use expressions in square operators
```javascript
let fruit = 'apple';
let bag = {
  [fruit + 'Computers']: 5 // bag.appleComputers = 5
};
```

### D. Property Shorthand for easier allocation

We can simply use names of variables as key names in shorthand. And it is
not necessary to have all the declarations of the same type.

```javascript
function makeUser(name, age) {
  return {
    name, // same as name: name
    age   // same as age: age
    // ...
  };
}
```

### E. Testing key is present in Object

If a property is not present in the Object, then undefined is returned. However
if the object itself contains undefined as the value, this test will fail.

```javascript
let user = {
  problem: undefined;
};

alert( user.noSuchProperty === undefined ); // true means "no such property"
alert( user.problem === undefined ); // false, as the property is actually there
```

The other way to test is to use the IN operator
```javascript
let user = { name: "John", age: 30 };

alert( "age" in user ); // true, user.age exists
alert( "blabla" in user ); // false, user.blabla doesn't exist

let inVariable = 'age';
alert( inVariable in user ); // serves the same function as above examples
```

We can also use IN operator to traverse the properties of the object
```javascript
let user = {
  name: "John",
  age: 30,
  isAdmin: true
};

for(let key in user) {
  // keys
  alert( key );  // name, age, isAdmin
  // values for the keys
  alert( user[key] ); // John, 30, true
}
```

### F. Ordering of Integer properties

Integer properties are always sorted.

The “integer property” term here means a string that can be converted to-and-from an integer without a change.

So, “49” is an integer property name, because when it’s transformed to an integer number and back, it’s still the same. But “+49” and “1.2” are not

```javascript
// Math.trunc is a built-in function that removes the decimal part
alert( String(Math.trunc(Number("49"))) ); // "49", same, integer property
alert( String(Math.trunc(Number("+49"))) ); // "49", not same "+49" ⇒ not integer property
alert( String(Math.trunc(Number("1.2"))) ); // "1", not same "1.2" ⇒ not integer property
```
### G. Object indentifiers are references

```javascript
let a = {};
let b = a; // copy the reference

alert( a == b ); // true, both variables reference the same object
alert( a === b ); // true
```

So remember, if we make the indentifier constant we can still modify the object but not indentifier

```javascript
let const user = {
  name : 'arjun',
  age : 22,
};

// this is okay
user.age = 21;
// this is not
user = {check : "cant do this"};
```
### H. Cloning an objects

* **Deep Copy**

```javascript
let obj1 = {
  prop1 :5,
  prop2 :6,
};

let obj2 = {};

for(let key in obj1){
  obj2[key] = obj1[key];
}

```
* **Assign operator**

```javascript
Object.assign(obj2,obj1);
// same properties are overwritten  

// or a simpler way to replace the loop
let obj2 = Object.assign({},obj1);
```

### I. Deep Clone

For cases when the objects can also have other objects as properties.
