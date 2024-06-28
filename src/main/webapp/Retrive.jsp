<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customers List</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>
<%! 
    Connection con; 
    Statement stmt;
    ResultSet rs;
%>
<%
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SYSTEM", "mahi");
    stmt = con.createStatement();
    rs = stmt.executeQuery("SELECT * FROM Customers");
    
    while (rs.next()) {
        int cid = rs.getInt("cid");
        String cname = rs.getString("cname");
        long cnum = rs.getLong("cnum");  // Use getLong instead of getInt
        out.print(cid + " ");
        out.print(cname + " ");
        out.print(cnum + " ");
        out.println("<br>");
    }

    if (rs != null) rs.close();
    if (stmt != null) stmt.close();
    if (con != null) con.close();
%>
</body>
</html>
