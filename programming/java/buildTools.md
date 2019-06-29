## Build Tools

A build tool is a program that automates the creation of executable applications from source code. The build process includes  compiling sources and linking and packaging the code into a usable or executable form.

In small projects (like projects for learning), developers can manually invoke the build process. But this approach is not practical for larger projects, where it is very hard to keep track of what needs to be built. Automating the build process minimizes the risk of human error. Additionally, an automated build tool is typically faster than someone performing the same steps manually. As a consequence, an automated build process improves the product’s quality and saves time and money.

Modern build tools can perform a wide variety of tasks that software developers do in their day-to-day activities:

1. Downloading and adding dependencies (external libraries).
2. Compiling source code to be executed (into bytecode in case of Java).
3. Packaging compiled code.
4. Running tests.
5. Deployment to the production environment.

There are three main build tools for Java-based projects: Apache Ant, Apache Maven, and Gradle.

1. Apache Ant was released in 2000. It is the oldest of these three build tools. Ant is rarely used in new projects but still occurs in practice. This tool can be used together with Apache Ivy to manage dependencies.

2. Apache Maven was released in 2004, and now it is one of the most popular choices for Java developers (especially for server-side development). Many projects, both old and new, use Maven as a build tool because of its powerful dependency management possibilities. Maven follows the Convention Over Configuration concept which means that a developer must specify only unconventional aspects of the application, and all standard aspects should work by default.

3. Gradle is a new tool compared to Ant and Maven. It was released in 2007 and is now standard for Android applications. But it is also used for server and desktop development. Gradle aims to “combine the power and flexibility of Ant with the dependency management and conventions of Maven into a more effective way to build.”

All of these build tools are free and can be used in any operating system. Note that Apache Maven and Gradle are more than simply build tools.

There is also another build tool called sbt (Simple Build Tool). It is primarily used for Scala projects but can be used for Java as well.
