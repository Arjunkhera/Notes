## Lets React : Part 3

In this section, we will review terminologies and workflow required for creating a React App using 

---

### Development and Production versions

For a web application, there are two versions
1. Normal 
2. Production ready : ugly cod

**How is the code made ugly ?**

1. Transpile the Js files
2. Minify the Js files : remove whitespaces
3. Uglify the Js files : 
4. Bundle the Js files

These steps basically compress the files and are not supposed to be comprehensible  

The same has to be done for CSS files. CSS files also need to be compiled. These are known as CSS pre processors. For example,
1. SASS
2. Compass
3. LESS

The CSS and Js files references in the HTML page also need to be updated  

Taskrunners used to do all the above tasks
1. Grunt
2. Gulp

Their task is similar to Maven. We use **WebPack**. It is a bundler that will help bundle our files for production ready unit.
The webpack comes with a development server as well

---

### Working with React Apps

There is a CLI tool for generating react application setup. The tool is known as **createReactApp**

We use **NPM**, which is a package manager for nodejs applications. This is required for the above tool.
And for executing node packages we use **NPX**. Read this [SO answer](https://stackoverflow.com/questions/50605219/difference-between-npx-and-npm) to understand more about NPX and NPM.

#### What is Package.json ?

- Package.json contains the metadata for the application
- It also contains the scripts that contains the commands for development activities
- It also contains dependencies and devDependencies

#### Things to keep in mind 

1. Use React Fragment to get rid of the extra div tag that we had to use to enclose the render code:
    1. This also preserves our css styling
2. Also, for ES6 modules, anything you define in a javascript is considered private:
    1. If you have to use anything from outside you to need to import it
    2. Same is valid for exporting your stuff
3. There can be only one default in a js file
4. Create one folder for each module -> project
5. Index.js is considered as the entrypoint for the folder 
6. In all the files having jsx, you need to import react
7. You can store multiple types in store
8. The store provided by redux converts it into an object 
9. This is done through the combineReducers command

Connect API and Provider API


#### Typical structure of the app folder

    - Actions(f)
    - Reducer(f)
    - Views(f)
    - Index.js
    - Store

#### Always return the new state from reducer

- When returning things from reducers, never update the state and return
- Always create a new state and return 
- DO NOT MODIFY EXISTING OBJECT
- If the return type is object, it will only match references and hence never render it
- To make sure you do this, create a new variable names as newState

---

### Asynchronous operations

Then method is used to subscribe to a successful completion
Server communication is an asynch operation
React does not deal with it

Promise
1. then(fn)
2. catch(fn)

We will use Axios to deal with asynch functions
Json server : It can take data from json file and exposes it as a RESTful service

--

### Resources

1. **Functional Programming In Javascript**
2. [Sir Videos](http://bit.ly/javascript-training-videos)


```
npm install json server -g
npm install redux-thunk
```
-

