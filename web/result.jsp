<%-- 
    Document   : result
    Created on : Jun 16, 2024, 6:29:01 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.ejb.*,javax.naming.*"%>
<%@ page import="java.io.IOException, java.io.PrintWriter" %>
<%@ page import="javax.servlet.ServletException, javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse" %>

<%!
    private OperationsSessionBeanRemote ops = null;
    float result = 0;

    public void jspInit(){
    try{
        InitialContext ic = new InitialContext();
        ops =(OperationsSessionBeanRemote)ic.lookup(OperationsSessionBeanRemote.class.getName());
    }catch(Exception ex){
        System.out.println("Error: " + ex.getMessage());
    }
    
    }

        public void jspDestroy(){
            ops=null;
        }   

        
%>
<%
    try{
        String s1 = request.getParameter("num1");
        String s2 = request.getParameter("num2");
        String s3 = request.getParameter("operation");
        
        System.out.println(s3);
        
        if(s1 != null && s2 != null){
            Float num1 = new Float(s1);
            Float num2 = new Float(s2);
            
            if(s3.equals("add")){
                result = ops.add(num1.floatValue(),num2.floatValue());
            }
            else if(s3.equals("sub")){
                result = ops.subtract(num1.floatValue(),num2.floatValue());
            }
            else if(s3.equals("mul")){
                result = ops.multiply(num1.floatValue(),num2.floatValue());
            }
            else if(s3.equals("div")){
                result = ops.divide(num1.floatValue(),num2.floatValue());
            }
        }
    }
    catch(Exception e){
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        <h1>The result is: <%= result%></h1>
    </body>
</html>
