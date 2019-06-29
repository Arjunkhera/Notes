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
