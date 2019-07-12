## Configuration Parameters

1. We can use a deployment descriptor file, commonly names as web.xml
2. Here we can provide context parameters which can be used by the servlets
3. The following code shows how to access these context parameters

```java
ServletContext context = getServletContext();

String fromContext = context.getInitParameter("name-in-context-file");

out.println("The value is:" + fromContext);
```
- getInitParameter() will always return data as a String
- 


---

### Redirecting from a JSP page

Here the servlet page path has been taken as /hello
```java
<%
    repsonse.sendRedirect(request.getContextPath() + "/hello");
%>
```
