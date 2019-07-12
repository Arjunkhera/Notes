# JSP and Servlets

1. [Basics](basics.md)
2. [Dealing with Form](forms.md)
3. [Sessions](sessions.md)
4. [Cookies](cookies.md)
5. [JSP tags](jspTags.md)

---

## Servlets

1. [Introduction](introduction.md)
2. [Configuration Parameters](configurationParameters.md)
3. [Making calls to JSP](callsToJSP.md)

---

## JDBC

1. [Connection Pooling](connectionPooling.md)

---
### General Advice

1. Best practice is to integrate both JSP and Servlets together to achieve out target
2. Servlet handles the business logic
3. JSP handles the presentation view
4. This is in line with the Model View Controller Pattern(MVC)



 Web Browser -----> Controller(Servlet) -----> Model
							|
							|
							|
							|
 Web Browser <------	 View(JSP)
