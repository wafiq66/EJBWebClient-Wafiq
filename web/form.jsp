<%-- 
    Document   : form
    Created on : Jun 16, 2024, 6:19:52 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
    </head>
    <body>
        <h1>Basic Operation</h1>
        <form action="result.jsp">
            Enter First Value:<input type="text" name="num1" size="25"><br><br>
            Enter Second Value:<input type="text" name="num2" size="25"><br><br>
            <b>Select your choice:</b><br><br>
            <input type="radio" name="operation" value="add">Addition<br>
            <input type="radio" name="operation" value="sub">Subtraction<br>
            <input type="radio" name="operation" value="mul">Multiplication<br>
            <input type="radio" name="operation" value="div">Division<br>
            <input type="submit" value="Submit"> 
            <input type="reset" value="Reset">
        </form>
        
    </body>
</html>
