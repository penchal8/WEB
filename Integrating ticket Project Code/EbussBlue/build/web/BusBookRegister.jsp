<%-- 
    Document   : BusBookRegister
    Created on : Jul 21, 2015, 2:17:45 PM
    Author     : Ramu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Please Register First</h1>
        
<%
try{
    out.println("Please Register First");
Thread.sleep(2000);

}catch(Exception e ){

}
response.sendRedirect("UserRegister.jsp");       
%>
    </body>
</html>
