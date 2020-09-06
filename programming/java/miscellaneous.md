## Miscellaneous

1. If an integer value contains a lot of digits, we can add underscores to divide the digit into blocks for increased readability: 1_000_000. It's more readable than the same value written like 1000000.
2. The compiler ignores any text from /** to */ just like it ignores multi-line comments.
This kind of comments can be used to automatically generate documentation about your source code using the javadoc tool. Usually, these comments are placed above declarations of classes, interfaces, methods and so on. Also, in this case, some special labels such as @param, @return and others are used for controlling the tool.

```java 

class Program {
        /**
         * The main method accepts an array of string arguments
         *      *
         *      * @param args from the command line
         *      */
         *     public static void main(String[] args) {
         *         // do nothing
         *     }
         * }

```

3. Each primitive class has a wrapper class defined for it. Boxing is the conversion between the primitive types and their corresponding object classes. Unboxing is the reverse process.

```java
int primitive = 100;

Integer reference = Integer.valueOf(primitive); // boxing

int anotherPrimitive = reference.intValue();    // unboxing
```
Use of constructors for making objects of primitive types from strings have now been deprecated since Java 9. Use special methods only to create the objects of the wrapper class.

**Primitive types cannot be used in Collections but wrappers can**

```java

// normal constructor methods, deperacated from version 9
Long firstMethod = new Long("200");

// special methods 
Long secondMethod = Long.parseLong("200");
Long thirdMethod = Long.valueOf("200");

```

4. Some classes are immutable. A nice example of this is String. Once you provide the value, you cannot modify it. You will have to create a new object if you want to make changes.
