## Overriding 

- the method must have the same name as in the superclass
- the arguments should be exactly the same as in the superclass method
- the return type should be the same type or a subtype of the return type declared in the method of the superclass
- the access level must be the same or more open than the overridden method's access level
- a private method cannot be overridden because it's not inherited by subclasses
- if the superclass and its subclass are in the same package, then package-private methods can be overridden
- static methods cannot be overridden


To prevent overriding, either use static or final

