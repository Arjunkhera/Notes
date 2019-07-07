## Lets React : Part 1

**React** is a library used to build rich internet applications

---

### Order of access from bottom to top
1. Data Store : Persistent data storage
2. Respository : Data Access Layer
3. Domain : Business Layer
4. App Services
5. UI layer : user interaction
6. Cross Cutting Concerns: services which are needed through all other layers. For example, authentication and authorisation

**Parts on UI layer**
1. Controllers : receive the requests from browser, analyse it and send it the other server layers 
2. Views : interpreting the objects received from the server and then forms the appropriate HTML views for sending to the browser 

---

### What browsers did early on
1. Browser only acts a mediator between the user and the server.
2. It only sends requests and recieves responses
3. It behaves like a dumb terminal

---

### Changes then and now

1. The infrastructure has grown a lot
2. The browsers have grown powerful

**Browser earlier**
1. Browsers were suppposed to behave as a proper HTTP client
2. Secondly, it should know how to render a HTML document

So it could do nothing that required Operating System requests, such as
1. Data storage
2. File system 
3. Multithreading capabilities
4. Inter process Communication
5. Host 
6. Device Access

**Browser now**
 - HTML 5 revolution : change the role of browser
 - All things are accessible today  
 - The browser now behaves like a virtual operating system

1. Data storage
    - Local storage : isolated storage, do not have access to the whole hard drive
    - Session storage
    - Indexed db
2. File System:
    1. API
3. Multithreading:
    1. web workers
4. Inter Process Communication:
    1. Server sent events
    2. web sockets
    3. web RTC -> it is peer to peer
5. Host:
    1. Service worker
6. Device Access:
    1. API's

---

### Software Evolution

Go where the processing power is  

1. Data and Application were both on servers:
    1. These were mainframes
    2. Access was only through dedicated dumb terminals
2. Then the applications were pushed to the clients:
    - Distribution is a headache
    - mulitple architectures
    - no worries about client system
3. Web application:
    1. back to step 1, combining data and application
    2. earlier we had dedicated dumb terminals
    3. now we have browsers
    4. all you need is a browser to access
4. Desktop applications made a big comeback:
    1. Just now that the platform was mobile
    2. So the applications are now deployed on mobile
    3. Just like step 2

---

### The stack now

Push the UI completely to the client side
1. Controllers:
    1. deciding what to based on user interaction
2. Views:
    1. components responsible for generating the HTML
3. Models:
    1. maintaining the application state

** so, in all**
1. We need the server for data storage  
2. So the request and response are now data 
3. This leads to much faster response times
4. This is useful in maintaining the states 
5. For examples, if we were to declare some stuff, then earlier we had to generate Session Id's to maintain the state
6. Now we can maintain the state on the client 

SPA : Single Page Application
REA : Rich Internet Application 

The handle the UI we need frameworks, such as 
1. React
2. Angular etc.

### How does React help

1. HTML
2. DOM
3. Rendered Page

Changes to DOM can prove to be expensive as the changes have to be rendered again and again
For examples, adding div will lead to adjustments in muliple places

With react
1. HTML
2. React DOM aka Virtual DOM
3. DOM
4. Rendered Page

React through virtual DOM ensures that this is done in the most efficient way  
The responsibility of updating DOM is on React.

Following is an example of with and without using React  
```javascript
var heading = document.createElement("h1");
heading.innerText = "welcome to react.js";
headin.id = "heading-1";
document.body.appendChild(heading);
```
Using react 
```javascript
var heading = React.createElement('h1',{id:'heading-1'},"welcome");
ReactDOM.render(heading, document.body)
```

React updates the DOM only when there are some changes to be rendered
And these changes only happen in the smalles possible area

---

### Babel 

1. It is a transpiler
2. Converts one version of language to another version of same language
3. It was initially created to convert ES5 to ES6
4. Some other examples, traceur,6to5 etc
5. Traceur was created by Google
6. Babel was created by high school droput, great inspiration

**JSX Javascript in XML** : Write in XML and transpiler will compile it into javascript
  
To use variables inside xml in babel, use ```{variableName}``` 

---

### Things to keep in mind for React

1. Rendering produced by loading of JSX cannot be accessed like a normal DOM object
2. Hence we use something known as a **Component**
3. Component = Presentation+Behaviour+State
4. We encapsulate presentation and behaviour in a class by extending ```React.componenet```  
5. render method is declared inside this class

#### State
1. The state mentions all the data variables that tell react to render again whenever they change
2. State object can only be used for reading the values
3. So, in order to modify a state we need to set the State using method, ```this.setState()```  
4. State then allows us to access variables 

#### Event Object
1. Whenever an event is triggered, we receive an event object  
2. We can use various methods of this event object to our benefit
3. For example the target method can be used to obtain the value from a text box, instead of declaring References

#### Note
1. We always need a root element when we return an object while rendering
2. This is the reason why every open tag should have a closed tag
3. Also use:
    1. htmlFor instead of for
    2. className instead of class
4. The reason for this is that javascript has these as keywords

**Examples**
1. [Calculator](calculator.md)
2. [Custom Greeting](customGreeting.md)


