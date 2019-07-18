## Principles

People to follow for architectures
1. Ivar jacobson
2. Grady booch
3. Kent beck
4. Martin fowler

### You are not gonna need it **YAGNI**
1. Check [this](https://martinfowler.com/bliki/Yagni.html)
2. For example, suppose you have to make a debit function, you are not supposed to validate account id and amount
3. YAGNI says, do only the stated task, not more, not less. 
4. You will be provided validated accounts and amounts information
5. You perform just your own logic 


### Keep it simple stupid **KISS**

### Dont repeat yourself **DRY**

### High Cohesion -> Single Responsibility **SRP**

### Low Coupling

### Open for Extension, Closed for Modification **OCP**
Allow inheritence, but do not allow for modifications in your class

### Liskov Substitution Prinicple
Base class reference or pointer should be in a position to be substituted by 

### Law of Demeter **LOD**

### Information Expert

### Dependency Inversion Principle **DIP**

### Pure Fabrication Principle

### Value Objects (VO)

### Null Object

### RTTI

### Interface Segregation Principle

### Controller

### Creators/Factories

### Cyclomatic Complexity
---

## GOFF Patterns

There are 23 classes of the patterns

1. Template Method Pattern

Curiously Recursive Template Pattern(CRTP) uses templates to achieve the Template Method Pattern and hence avoid
the overhead of maintaining the virtual tables, thus making the program faster and more responsive
---

### Good Reads

1. [GRASP](https://www.cs.colorado.edu/~kena/classes/5448/f12/presentation-materials/rao.pdf)
