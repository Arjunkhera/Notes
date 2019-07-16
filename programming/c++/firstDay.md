## First day

Inside Object Model**


### Naming Conventions

We take care of **name mangling**
This is the responsibility of the library author

1. Functions are decorated according to certain conventions
2. The compiler authors have to follow some conventions
3. The implementation is on them
4. This creates a problem
5. If there is a difference in the conventions, 
6. While making a library mark your functions with the appropriate convention
7. Using the naming convention makes it heterogenous, so now you do not have ensure that the version of compilers match


### Function unwinding and stuff

**function unwinding**
Removing the function stack after the task is done

We can specify who should do the unwinding, the vendor or the consumer compiler

**cdecall and stdcall**
Use ```_cdecl``` for vendor compiler
Use ```_stdcall``` for consumer compiler

If you know the number of arguments, use _stdcall
But if the arguments are variable, use _cdecl

**fast call**
We also have ```_fastcall``` is just a request for registers  

**this call**
1. Every function, whether or not it is the part of a class, is a global function of the compiler
2. So, when we use ```_thiscall``` in the class function, it passes the pointer to the object also
3. For member functions of the class, the ```_thiscall``` is implicit

### Classes

1. The size of an empty class is 1 byte
2. Functions are stored in the code area
3. So a function declared in the class does not contribute to its size

---

1. The VPTR is the first in an object, and is followed by the rest of the methods
2. Do not use endl too much, flushing is costly, use only when required
3. VTables are static arrays
4. Every class has its own Vtable
5. So during inheritence all information from parent VTable are copied to the inherited VTable

---

1. Now if the virtual functions are not defined by the inherited class then their addresses are same in the VTables
2. Otherwise, the VTable of the child class will point to its new function tht overrides the parent implementation
3. Overriding happens in the VTable, as the address of the original function is overridden by the address of the new function with same signature
4. As long as the function signatures match, you do not need to use virtual keyword in front of the function in the derived class, c++ automatically overrides it
5. However, if the signatures mismatch, then the function is not overridden
6. In modern c++ you can use the override keyword to check whether you are overriding or not

---
1. So, simple rule
2. If your function is of the same signature as of the parent function then it will be overridden, whether or not virtual is used
3. If the signatures do not match, then it is not overriden

---

1. Constructors are called after the object is constructed
2. Constructor requires the this pointer to the object which it is constructor
3. The only special thing is, that the call is made to the constructors once the object is allocated in the memory 
4. Constructor is a normal functions

**RAII**
Resource acquisition is initiliasation
Make sure to acquire all resources


1. The derived class is called first followed by the base class constructor
2. The base class constructor is called from the derived class constructor
3. The compiler does not synthesise the constructor untill and unless it is required
4. So when we do not provide a constructor, the compiler does not generate a default constructor because it does not need it
5. However, suppose this class is the parent of another class, and another class inherits from it
6. Now, if the child class does not have a constructor, the compiler will make a default constructor because it needs to call
the constructor of the parent class


The constructor call for an 

There are only four cases when a compiler synthesises a constructor:
1. A
2. b
3. If the parent has a constructor and the base does not
4. If the class has a virtual method

```c++
class child: public A,B,C,D{
    first f, second s,third t;
}

// call of constructors is in the following order
// A,B,C,D,f,s,t
// destructors are called in the reverse order
```

If we have virtual methods, then the call to VPTR is sandwiched between the base class and attribute class 

When we have a pointer or a reference to an object, then call to virtual functions is resolved through the VTable
In any other case, it is resolved through the code segment

---

### Try Catch

1. Resources can leak if the exceptions are not handled
2. You can set your own terminate functions to handle abrupt terminations

**Understanding the Catch block**

1. Just like VTable, we have a Catch Table
2. A try can have n number of catch blocks
3. But it will always have a single catch block
4. The throw exception is copied to the catch table
5. This is followed by stack unwinding
6. From the catch table the exception is sent to the catch block
7. The catch body is then executed
8. This is followed by the epilogue of catch
9. Finally the catch table is released


**Rethrowing and some more advice**
1. rethrow happens from catch table
2. Always put memory allocation in a try catch block
3. C++ allows to catch by value, but we should prefer using by reference
4. Never throw exceptions from destructors, as this can lead to exception overlapping
5. Throwing exceptions from the constructor, gracefully do it

---

### Dissecting call to new

1. First call to operator new
2. Followed by call to function new
3. Followed by call to constructor

### Dissecting call to delete

1. First call to destructor
2. Followed by call to operator delete
3. Followed by call to function delete

---

### Prohibiting Construction of object on the heap

- To prohibit construction from heap, overload the new operator and make it private
- When a call to new is made, it is unable to access the overloaded new as it is private

### Smart Pointer

Aim is to ensure that an object can only be allocated on the heap and not directly. One solution would be 
to make the destructor private, but then we would face a problem when trying to free the memory as the delete
operator makes a call to destructor which would give an error. And if we were to make the constructor private
then the new operator would also stop working, as the immediate call after new is for the constructor. The following
presents an approach to solve this problem, 

1. Make the constructor and destructor private. This ensures that no object of that type can be instantiated directly
2. Write a wrapper class and make it a friend to the parent class
3. The wrapper class has a private member variable commonly referred as the **smart pointer**
4. Handle the construction and destruction of the parent object in the wrapper class constructors and destructors 
5. One can also pass the smart pointer from the wrapper object in order to make direct function calls on the parent class 
6. To ensure that the wrapper class is restricted from the heap, overload the new and delete operators and make them private

---

### Deep Copy

1. Deep copy objects are know as **DTO's** : data transfer objects
2. They are expensive
3. Useful for data transfer, usually for communication between layers in an application

### Deep Assignment


For overloading the equal to operator, we have to pass to return the this pointer 
```
Wrapper& operator=(const Wrapper &par){
    
    return *this;
}

```

### Copy and swap

1. Pass by value in the overloaded operator
2. Passing by value, with a deep copy constructor create a new parent object and wrapper is created
3. Swapping ensures that the life of the passed parameter/object after swap is limited to the scope of the function
4. This way the original object is destroyed, and it now points to a new location in memory with the same values 

### Shallow copy

1. We can have static map declared in the wrapper
2. The keys will be the pointers to the various parent objects in the heap
3. We only make the delete call from the destructor of the wrapper class if the map says the number of copies is reduced to zero

But the assignment operation can create some problems
dont worry, swap will handle this for us

Some techniques
1. Body handle
2. reference count
3. ownership transfer

---

The following are very regularly used

### Shared ptr

shared ptr is a smart pointer with reference counting

### Unique ptr

Unique_ptr is used in cases where we want to transfer ownership

---

**Study**
1. Weak ptr
2. Const ptr
3. Cyclic references
4. Casting operator


admin operations on array, how to define access control
---

explicit is allowed to be used on multiple parametrise constructors from modern c++ onwards
now we can also use explicit on casting operator 
