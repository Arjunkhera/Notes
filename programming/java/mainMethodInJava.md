## Main Method

The syntax for the main method is strict, as given below

```java
public class RandomClass {
    public static void main(String[] args){
    }
}
```

Its nice to know a few cases where a mistake in this could throw errors

**Compile Time errors**
1. Mistake in typing keywords
2. Invalid method declaration, for example missing return type


**Runtime errors**

```java

// invalid arguments
public static void main(String args) {
    System.out.println("Hello, Java");
}

// missing static 
public void main(String[] args) {
    System.out.println("Hello, World');
}

// using private instead of publid
private static void main(String{} args) {
    System.out.println("Hello, World");
}
```

- Also, post Java 7, you cannot run a program without a main method. Before that, you could do that by 
  putting the code to be executed inside static blocks
  

