## Class Types 

1. Entity/Domain/Model Classes
    - Easiest to make and work with
    - Basic task is mapping of data between tables in the database and Java
    - So, a class/object is mapped to a table
    - Attributes/Fields are mapped to the columns of the table
    - Generally does not contain the business logic
    - Should have getters/setters/equals()
      
2. Data Access Object (DAO) Classes
    - Contain CRUD operations
    - Should not contain any UI or Business Logic code
3. Business Logic
4. Service Classes
    - Combines fine grained operations of DAO and Business Logic to provide atomic operations
    - A facade over DAO and Business Logic classes
    - Used by UX Classes
5. UX Classes
    - Client side code
6. Utility Classes
    - Helper functions that are not specifically attatched to any specific unit in general
    - Example, a general sort function

---

## Making Life Easier in Eclipse
1. Write syso, followed by ctrl+space. Gives ```System.out.println();```
2. ctrl+d removes a line
3. Most of the code is generated using insert -> source and then click on constructors or getters and setters to generate the code.

---

## Tools For Java Developers

1. CheckStyle
	- coding conventions
	- naming conventions
		- Camel case : for class, variables, methods
		- SNAKE Case : for constants, eg final EMP_MAX_AGE = 60; // final declares constants
		- Spine Case : not used
	- white space
	- comments
2. PMD/ Findbugs
	- coding standards
		- empty conditional blocks
		- unreachable code
		- copy paste code
3. Clover/ CodeCoverage
	- how much percentage of code has been tested
4. Jenkins
	- continuous integration tool 
	- other examples, Travis, Circle
5. SOnarCube
	- wrapper on top of Clover, Checkstyle and PMD
	- kind of covers a lot of things, so people use it along with Jenkins
6. Maven/ Gradle/ Ivy
	- dependency management tool

---

## JRE 

1. ClassLoader
	- moves class from Secondary memory to Primary memory, that is it loads the .class bytecode
	- it looks for the code in the bin or in the CLASSPATH 
2. findLoadedClass() : checks whether the class has already been loaded or not
3. loadClass() : loads the class from users source code
4. findSystemClass() : find class from the JRE library
5. defineClass() : makes bytecode compatible with your machine. This step is dependent on the platform.  

---

## JVM

It has three main areas
1. Metadata aka Method area : contains one instance of each class
2. Program counter
3. Stack

---

## Important points to note

1. Always follow the general convention. For examples
    - While writing getters, start with get
    - While writing setters, start with set


