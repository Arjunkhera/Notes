## Class representation in memory

The following creates a new object. Here acc is a reference/pointer to a block of memory in Heap.

```java
Account acc = new Account();
```

---

Every class call in Java is of the form

```java
context.message(arguments)
```

---

The variables of a class are also known as *instance variables* or *state of the object*  

Declaring a variable as static makes it *state of the class*. So changes to it are  
now visible across the objects of that class. It moves the storage from the heap to the metadata.   

Returning a static variable by making the return type static of the method ensures that the call 
can only be made by the class and not by the object.   

---

The following examples displays some nuances of inheritence

```java
class Product {
	doTask() {
		print("first");
	}
}

class Mobile extends Product {
	simpleTask() {
		print("hello");
	}

	doTask() {
		print("second");
	}
}

Mobile m = new Mobile();
m.doTask(); // second
m.simpleTask(); // hello

Product p = new Mobile();
p.doTask(); // second
p.simpleTask(); // ERROR

```

---

## Upcasting and Downcasting

1. Upcasting : Assigning an object of child class to that of a super class
    - We can override the functions of the super class
    - We can also use the super class constructor to make our life easier in child classes
    - **Dynamic binding**/**Runtime Polymorphism** allows us to upcast and call overridden methods 

2. Downcasting : Assigning an object of super class to that of the child class
    - The super class object cannot access the methods or variables of the child class
    - It can only call the ones that are inherited by the child from it


---

## Relationship between Objects

1. Generalisation and Specialisation
	- are a type of IS A relationship done using **inheritence**
	- generalisation means going up 
	- specialisation means going down
2. Realisation
3. Association
4. Uses A

---

## Things to Keep In Mind

1. Any method returning boolean should start with "is"
2. Extends is used for inheritence in Java
3. Use the **DRY** Prinicple, that is *Dont Repeat Yourself*
4. All methods in Java are virtual by default
5. Classes which do not exist in the real world, mark them abstract
6. Use abstract functions to ensure uniformity and force inherited classes to declare their own function body rather than rely on the parent
7. Abstract class need not have absract method, but if a class has a abstract method, then the class automatically becomes abstract.

