## Connection Pooling

1. A single database cannot scale for multiple web users
2. We can use database connection pools for concurrent and faster access
3. The connection pool file is defined an XML file, usually named context.xml


```xml
<Context>
<Resource name="jdbc/web_student_tracker"
    auth="Container" type="javax.sql.Datasource"
    maxActive="20" maxIdle="5" maxWait="10000"
    username="admin" password="admin"
    driverClassName="com.mysql.jdbc.Driver"
    url="jdbc:mysql://Localhost:3306/web_student_tracker" />
</Context>
```

---

### Using the connection pool in the Servlet

```java
@WevServlet("/TestServlet")
public class TestServlet extends HttpServlet {
    
    @Resource(name="jdbc/web_student_tracker")
    private DataSource dataSource;
}

```
