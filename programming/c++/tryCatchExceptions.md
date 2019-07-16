## Try, Catch and Exceptions

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

---

### Rethrowing exceptions

- We can rethrow the exception from the catch block by just writing ```throw```
- The exception thrown is the same as the one passed to the catch 
- The rethrow happens from the catch table
- Which means a change inside the scope of the catch block would not affect the value of the exception
- However, passing by reference is the correct way
- In that case, a change would be reflected across the outer catch blocks too

```c++

	int x = 10;
    
    try
    {
        try
        {
            if (10 == x)
                throw 100;
            cout << "Apple" << endl;
        }
        catch (int exp)
        {
            cout << "inner exp =" << exp << endl;
            throw;
        }
        cout << "Orange" << endl;
    }
    catch (int exp)
    {
        cout << "outer exp=" << exp << endl;
    }
    
    cout << "Jack" << endl;
```

---

### Exceptions and Classes

1. Whenever allocating memory from heap, put it in a try catch block
2. You can catch allocation errors using bad_alloc and make sure you dont work with bad allocation
3. Also, never throw exceptions from the destructor, as it can lead to exception overlapping 
4. But you can definitely throw exceptions from the construtor, just make sure to do it gracefully



