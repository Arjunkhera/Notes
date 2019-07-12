## Cookies

1. The contents of the cookie are a name value pair
2. Cookie class is defined in the javax.servlet.http package which is imported by default 
   
   
### Example code for using Cookies in JSP

**Home Page**
```
<html>
<body>
<h3>Training Portal</h3>

<!-- read the favorite programming language cookie -->
<%
	// the default ... if there are no cookies
	String favLang = "Java";

	// get the cookies from the browser request
	Cookie[] theCookies = request.getCookies();
	
	// find our favorite language cookie
	if (theCookies != null) {
		
		for (Cookie tempCookie : theCookies) {
			
			if ("myApp.favoriteLanguage".equals(tempCookie.getName())) {
				favLang = tempCookie.getValue();
				break;
			}
		}
	}
%>

<!-- now show a personalized page ... use the "favLang" variable -->

<!-- show new books for this lang -->
<h4>New Books for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Latest News Reports for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Hot Jobs for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<hr>
<a href="cookies-personalize-form.html">Personalize this page</a>
</body>
</html>
```

**Form Page**
```
<html>
<head>
	<title>Personalize The Site</title>
</head>

<body>

<form action="cookies-personalize-response.jsp">
	Select your Favorite Programming Language
	<select name="favoriteLanguage">
			<option>Java</option>
			<option>C#</option>
			<option>PHP</option>
			<option>Ruby</option>
	</select>

	<br/><br/>
	
	<input type="submit" value="Submit" />
</form>


</body>
</html>
```

**Confirmation Page**
```
<html>
<head>
<title>Confirmation</title></head>

<%
	// read form data
	String favLang = request.getParameter("favoriteLanguage");

	// create the cookie
	Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
	
	// set the life span ... total number of seconds (yuk!)
	theCookie.setMaxAge(60*60*24*365);    // <-- for one year
	
	// send cookie to browser
	response.addCookie(theCookie);
%>
<body>

	Thanks! We set your favorite language to: ${param.favoriteLanguage}
	
	<br/><br/>
	
	<a href="cookies-homepage.jsp">Return to homepage.</a>
	
</body>
</html>
```
