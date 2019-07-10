## Sessions

1. HTTP protocol is stateless in nature
2. In order to track user data, servers can maintain data in the form of sessions
3. For each user, we have a session object and each user is given a unique session id

### Adding data to session object

Setting attribute of a session
```
session.setAttribute(String name, Object value)
```

Getting attribute of a session
```
session.getAttribute(String name)
```

**Some other useful session methods**

1. isNew()
2. getId()
3. invalidate()
4. setMaxInactiveInterval(ling mills)


### Example code for session tracking

```html
<% page import="java.util.*" %>

<html>
<head>
	<title>To Do List</title>
</head>

<body>

<form action = "todoListDemo.jsp">
	Enter your task : <input type="text" name="inputItem" />
	<input type="submit" value="Submit" />
</form>

The task entered was: <%= request.getParameter("inputItem") %>

<br>
<hr>
<br>

<% 
	List<String> inputTasks = (List<String>) session.getAttribute("todoList");

	if(inputTasks == null){
		inputTasks = new ArrayList<String>();
		session.setAttribute("todoList", inputTasks);
	}
	
	String inputItem = request.getParameter("inputItem");
	if(inputItem != null){
		inputTasks.add(inputItem);
	}
%>

<br>
<hr>
<br>

<ol>
<%
	for (String temp: inputTasks){
		out.println("<li>" + temp + "</li>");
	}
%>
</ol>


</body>
</html>
```
