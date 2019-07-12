## Making calls to JSP

#### Dispatching call to JSP 
```java

RequestDispatcher dispatcher = request.getRequestDispatcher("view_students.jsp");

dispatcher.forward(request,response);

```

#### How to send data to JSP page

Package it in the request
```
request.setAttribute("student_list", students);
```
