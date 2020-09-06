## Exceptions 

Exceptions are present in the java.lang package, hence are automatically imported

Hierarchy of exception classes
- Throwable
    - Error
    - Exception
        - Runtime Exception



- Throwable contains common methods
- Error represents low level JVM errors

**Checked exceptions**
- Compiler will check if the user has handled these exceptions or not
- All exceptions except runtime exceptions and its derived classes are excluded


**Unchecked exceptions**
- Compiler does not check for the handling of these exceptions
- Includes runtime exceptions and errors


- While using multiple catch blocks, the base class exception should come after their children
- Failure to do so results in compile time errors
- Exceptions that are each others sub classes cannot be in the same try catch block
- We can write try finally block and skip the catch block altogether




