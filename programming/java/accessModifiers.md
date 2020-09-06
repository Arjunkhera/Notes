## Access Modifiers

**Class**

- Public : accessible by any class, same package or not
- Package Private(default, no explicit modifier) : visible only to classes in the same package
 
 
**Fields and Methods**

| Modifier  | Class | Package | SubClass | Global |
|-----------|-------|---------|----------|--------|
| Public    | Yes   | Yes     | Yes      | Yes    |
| Protected | Yes   | Yes     | Yes      | No     |
| Default   | Yes   | Yes     | No       | No     |
| Private   | Yes   | No      | No       | No     |


**Inheritance**

- If you do not want a class to be inherited, use the final keyword
- Standard classes such as Integer, Long, String cannot be extended
- Superclass aka base, parent
- Subclass aka child, extended, derived

