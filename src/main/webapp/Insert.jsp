<html>
<body>
<%@ page import="java.sql.*" %>

<%! 
    Connection con;
    Statement stmt;
%>
<%
     Class.forName("oracle.jdbc.driver.OracleDriver");
     con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","mahi");
     stmt = con.createStatement();
     stmt.execute("INSERT INTO Customers (cid, cname, cnum) VALUES (555, 'DISH', 9999999999)");
     stmt.execute("INSERT INTO Customers (cid, cname, cnum) VALUES (556, 'DOOM', 9999999999)");
     out.print("Values Inserted");
     con.close();
%>
</body>
</html>
