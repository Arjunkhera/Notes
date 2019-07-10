## Basic Introduction

Java is a general-purpose, modern programming language initially developed by Sun Microsystems, and currently owned by Oracle Corporation. The key feature of the language is platform independence: it means that the same Java program can be run on multiple platforms without any changes! This principle is also known as "write once, run anywhere" (or WORA).

Note, a platform is a combination of computer hardware and software.

Java has been one of the most popular programming languages for many years. It has earned the top position in the TIOBE index (a programming language popularity index). This language is used by a huge community of developers around the world! If you have a problem, you can always ask other developers or find a suitable answer online.

The most important feature of Java is platform independence.

Another important feature is a simple and clear syntax. Many elements of the language are easy to read and are widely used in other programming languages such as C/C++, C#, JavaScript, and Go.

If you have ever written programs in C/C++, then you know that manual memory cleaning can lead to bugs in the code. Fortunately, Java has a garbage collector that automatically cleans memory from unused objects during runtime.

It is also important that Java supports multiple programming paradigms. Java is primarily an imperative language based on the object-oriented concept: almost every part of a program is an object. Therefore, a program itself can be considered a set of interacting objects. Also, it partially supports modern programming paradigms such as generic programming, concurrent programming, functional programming (starting with Java 8), and some others.

In conclusion, Java is a modern and popular programming language that can be successfully used in almost all domains.

### Terminology

1. Program – a sequence of instructions (called statements), which are executed one after another in a predictable manner. Sequential flow is the most common and straight-forward sequence of statements, in which statements are executed in the order that they are written - from top to bottom in a sequential manner;
2. Statement – a single action (like print a text) terminated by semi-colon (;);
3. Block – a group of zero, one or more statements enclosed by a pair of braces {...}; There are two such blocks in the program above.
4. Syntax – a set of rules that define how a program needs to be written in order to be valid; Java has its own specific syntax that we will learn;
5. Keyword – a word that has a special meaning in the programming language (public, class, and many others). These words cannot be used as variable names for your own program;
6. Identifier or name – a word that refers to something in a program (such as a variable or a function name);
7. Comment – a textual explanation of what the code does. Java comments start with //.
8. Whitespace – all characters that are not visible (space, tab, newline, etc.).

### Casting

If you want to cast a narrower type to a wider type, you do not need to write anything, the Java compiler will do it automatically for you. But if you want the opposite, specify the required type in parentheses following the assignment operator. Keep in mind, the boolean type cannot be cast to another type and vice versa.

Byte cannot be converted to char inspite of being smaller in size.

### Primitives and References

The basic difference is that a variable of a primitive type store the actual values, whereas a variable of a reference type stores an address in memory (reference) where the data is located. The data can be presented as a complex structure that includes other data types as their parts.

The way to store data also affects the mechanism to assign the value of a variable to another variable:
primitive types: the value is just copied;
reference types: the address to the value is copied (the data is shared between several variables).

To compare values instead of reference addresses of the objects, we need to use the equals method.

```java

String s1 = "arjun"
String s2 = "arjun"

System.out.println(s1.equals(s2))
```

### Java keywords

[All Keywords](https://en.wikipedia.org/wiki/List_of_Java_keywords)

**main is not a keyword**
