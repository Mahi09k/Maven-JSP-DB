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
     stmt.execute("Update Customers set cid=444 where cid=556");
     out.print("Value Updated");
     con.close();
%>
</body>
</html>
