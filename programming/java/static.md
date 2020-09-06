## Static

1. Declaring something static moves it from the heap to the metadata area
2. A static variable or block is attached to the class instead of the object, that is it becomes a class variable instead of an instance variable
3. This is useful when you want some logic to be executed without requiring objects or writing constants
4. Or in cases where you are passing two objects to a class method, static kind of ensures fairness, as no one object calls the method.

- a static method can only access static fields
- a static method can only access static methods
- a static method cannot refer to this keyword, since there is no context
