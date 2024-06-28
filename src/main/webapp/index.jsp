<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Database Operations</title>
</head>
<body>
    <h1>Database Operations</h1>

    <h2>Insert Data</h2>
    <form method="post" action="index.jsp">
        <input type="hidden" name="action" value="insert">
        Name: <input type="text" name="name"><br>
        Age: <input type="text" name="age"><br>
        <input type="submit" value="Insert">
    </form>

    <h2>Update Data</h2>
    <form method="post" action="index.jsp">
        <input type="hidden" name="action" value="update">
        ID: <input type="text" name="id"><br>
        Name: <input type="text" name="name"><br>
        Age: <input type="text" name="age"><br>
        <input type="submit" value="Update">
    </form>

    <h2>Delete Data</h2>
    <form method="post" action="index.jsp">
        <input type="hidden" name="action" value="delete">
        ID: <input type="text" name="id"><br>
        <input type="submit" value="Delete">
    </form>

    <h2>Retrieve Data</h2>
    <form method="post" action="Retrive.jsp">
        <input type="hidden" name="action" value="retrieve">
        <input type="submit" value="Retrieve">
    </form>
</body>
</html>




    