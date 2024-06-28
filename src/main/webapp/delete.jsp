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
     stmt.execute("delete Customers where cid=111");
     out.print("Value Deleted");
     con.close();
%>
</body>
</html>
