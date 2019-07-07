## Getting Started 

1. HTML document is converted to an Document Object Model
2. Everything in HTML is an object, the tags are converted to objects
3. Javascript allows us to manipulate the Document Objects
4. This manipulation of HTML using DOM + JS we get DHTML -> Dynamic HTML
5. Browser automatically exposes the API's
6. We need a way to traverse the DOM object, which is done through an API
7. The DOM is actually a tree structure

---

### Document Object Model

The first object in HTML is a window

**Window**
    - frames
    - navigator
    - document : this represent the HTML object

**Object**
    - State: represents the data, what the object holds
    - Behaviour: represents the functionality, anything the object can do
    
1. The state influences the behaviour, and vice versa. Both are interrelated
2. In javascript, methods are attributes whose values are functions
3. We need to change the state in order to modify it
4. Low level DOM API can be time consuming and very hard
5. Each object has its own methods
6. As these are in memory, they can be manipulated

```javascript
// lists all the methods of the given object
console.dir(heading1)
```
If the attribute value is a 
    - string: it is a data
    - function: it is a method

JQuery is a high level library that provides high level api's, making access to objects easier

The following shows how to dynamically change an object in DOM through javascript
```javscript
var head3 = document.getElementById("head-3")
head3.innerText = "bla"
```

---

### Changing the DOM tree itself

In order to add something to the tree we have to create an object and add it to the DOM 

```javascript

var listItem = document.createElement("li")
listItem.innerText = "awesome man"

var list = body.chilren[4]
list.appendChild(listItem)

var firstChild = list.children[0]
list.removeChild(firstChild)
```
---

### Allowing user interaction

We can call changeheading from console to modify the heading. But we have to input this function in the console.
```javascript

function changeHeading(text) {
    var head3 = document.getElementById("head-3")
    head3.innerText = text;
}

changeHeading("Another Heading")

```

The following example shows how to add a button and take input from user.   
```javascript
function changeHeading() {
    var userName = prompt("enter your name")
    var head3 = document.getElementById("head-3")
    head3.innerText = userName;
}

var btChangeTitle = document.getElementById("btnChangeTitle")
btnChangeTitle = addEventListener('click', changeHeading)
```

A better way is to add the script in the html.These scripts are made a part of the document itself.  
So when the document is loaded, the scripts are loaded too.
```javascript
function onBtnChangeTitleClick() {
    var newTitle = prompt("Enter the new title")
    changeHeading(newTitle);
}

function onDocumentLoad() {
    document.getElementById("btnChangeTitle").addEventListener('click', onBtnChangeTitleClick);
}

// single line execution
// cannot add straightaway in script as will be executed before document is loaded
// we need it to be executed after document is executed
// so we add the following line
window.addEventListener('load', onDocumentLoad);
```

### Events

1. Things that happen to an object
2. When you tell an object, method to do something based on an event, it is known as *event subscription*
3. The event subscription is nothing but a function, referred to as *event listeners*

