## Wrapper Classes and other juicy stuff

There is a lot to new and delete than meets the eye   

### Understanding New and Delete

The following are the steps followed while making calls to new and delete

### Dissecting call to new

1. First call to operator new
2. Followed by call to function new
3. Followed by call to constructor

### Dissecting call to delete

1. First call to destructor
2. Followed by call to operator delete
3. Followed by call to function delete

---

### Try, catch and how new actually works

Look at the following code

```c++
include<iostream>

using namespace std;

class CA
{
public:
    static void* operator new(size_t size)
    {
        cout << "CA::new called " << endl;
        return ::operator new(size);
    }
    static void operator delete(void *pv)
    {
        cout << "CA::delete called " << endl;
        return ::operator delete(pv);
    }
    CA()
    {
        cout << "CTor" << endl;
        throw 100;
    }
    ~CA()
    {
        cout << "Dtor" << endl;
    }
};

int main()
{
    CA *obj = NULL;
    try
    {
        obj = new CA();
        cout << "Orange" << endl;
    }
    catch (bad_alloc & exp)
    {
        cout << exp.what() << endl;
        cout << "Apple" << endl;
    }
    catch (int exp)
    {
        cout << "exp=" << exp << endl;
    }
    if (obj == NULL)
    {
        cout << "Orange" << endl;
    }
    else
    {
        delete obj;
        cout << "Pine" << endl;
    }

return 0;
}

```

1. The following program executes the else part of the if else block
2. Which means that the object is not null
3. To understand this, we need to learn how new works behind the scenes 

```c++
	CA* temp=operator new(1);
	try
		{
		temp->CA::CA();
		}
	catch(...)
		{
		operator delete(temp);
		throw;
		}
	obj=temp;
```

1. New first assigns memory to a temporary object
2. So, when we wrap the new declaration outside in a try catch block
3. And the constructor throws an exception
4. This exception is rethrown by the inner catch and caught by the outer catch block that the user declared 
5. And henceforth, the temporary object is never assigned to the object thus making it NULL 

- When we use a square operator with new for class objects, the new operator is only called once  
- Subsequently, the number of calls equivalent to size of array are made for the respective constructors 

### Prohibiting Construction of object on the heap

- To prohibit construction from heap, overload the new operator and make it private
- When a call to new is made, it is unable to access the overloaded new as it is private
- Refer to the following code for example

```c++

#include<iostream>

using namespace std;

//Heap object Prohibition
class CA
{
    static void* operator new(size_t size)
    {
        return NULL;
    }
    static void* operator new[](size_t size)
    {
        return NULL;
    }
        static void operator delete(void *pv)
    {
    }
    static void operator delete[](void *pv)
    {
    }
public:
    CA()
    {
        cout << "CTor" << endl;
    }
    ~CA()
    {
        cout << "Dtor" << endl;
    }
};

void main()
{
    //CA *ptr1 = new CA();
    CA obj1;
    //CA *ptr3 = new CA[5];
    //CA *ptr2 = new CA();
    CA obj2;
}

```
---

### Only heap allocation : Welcome Wrapper classes

1. In order to ensure that object of a class can only be called from the heap
2. We need **wrapper classes**
3. Look at the following code for solution

```c++

#include<iostream>

using namespace std;

class CA
{
    ~CA()
    {
        cout << "CA Dtor" << endl;
    }
    CA()
    {
        cout << "CA CTor" << endl;
    }
public:
    void fun()
    {
        cout << "fun" << endl;
    }
    friend class Wrapper;
};

//Smart pointer
class Wrapper
{
    static void* operator new(size_t size)
    {
        return NULL;
    }
    static void* operator new[](size_t size)
    {
        return NULL;
    }
    static void operator delete(void *pv)
    {
    }
    static void operator delete[](void *pv)
    {
    }
    CA *ptr;
public:
    Wrapper() :ptr(new CA())
    {

    }
    CA* operator->()
    {
        return ptr;
    }
    ~Wrapper()
    {
        delete ptr;
    }
};
void main()
{
    Wrapper w1;
    w1.operator->()->fun();
    w1->fun();
}

```

---

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

This wrapper class thus uses the smart pointer to manage heap memory. Now we are faced with a couple of new situations

What if we have a couple of wrappers pointing to the same objects, how to ensure that the memory deallocation does not
lead to dangling pointers. 
How do we make multiple wrappers point to the same object 
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
