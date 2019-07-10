## Dealing with Forms

index.html
```
<html>

<body>
    <Form action="myForm.jsp">
        First name: <input type="text" name="firstname" />
        Second name: <input type="text" name="secondname" />       
        <input type="submit" value="Submit" />
    </Form>
</body>

</html>
```
---

There are two ways of accessing the variable. The ${} method however can only be used to fetch a single element.

myForm.jsp
```
<html>

<body>

    First name : ${para.firstName}
    Second name : <%= request.getParameter("firstName") %>

</body>

</html>

```

--- 

### Different form types

1. Drop down list
```
<select name="country">
    <option>Brazil</option>
    <option>India</option>
</select>
```

2. Radio buttons
```
<input type="radio" name="favLang" value="english"> English
<input type="radio" name="favLang" value="hindi"> Hindi
```

3. Checkbox
```
<input type="checkbox" name="favLang" value="english"> English
<input type="checkbox" name="favLang" value="hindi"> Hindi
```



