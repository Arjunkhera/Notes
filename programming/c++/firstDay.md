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

The size of an empty class is 1 byte
Functions are stored in the code area
So a function declared in the class does not contribute to its size

The VPTR is the first in an object, and is followed by the rest of the methods
Do not use endl too much, flushing is costly, use only when required

VTables are static arrays
Every class has its own Vtables
So during inheritence all information from parent VTable are copied to Base VTable

Now if the virtual functions are not defined by the inherited class then their addresses are same in the VTables
Otherwise, the VTable of the child class will point to its new function tht overrides the parent implementation
Overriding happens in the VTable, as the address of the original function is overridden by the address of the new function with same signature

As long as the function signatures match, you do not need to use virtual keyword in front of the function in the derived class, c++ automatically overrides it
However, if the signatures mismatch, then the function is not overridden
In modern c++ you can use the override keyword to check whether you are overriding or not

So, simple rule
If your function is of the same signature as of the parent function then it will be overridden, whether or not virtual is used
If the signatures do not match, then it is not overriden


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


Resources can leak if the exceptions are not handled
You can set your own terminate functions to handle abrupt terminations


1. Just like VTable, we have a Catch Table
2. A try can have n number of catch blocks
3. But it will always have a single catch block
4. The throw exception is copied to the catch table
5. This is followed by stack unwinding
6. From the catch table the exception is sent to the catch block
7. The catch body is then executed
8. The epilogue of catch
9. Releases the catch table
