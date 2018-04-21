<%-- 
    Document   : error
    Created on : Sep 26, 2016, 10:49:11 AM
    Author     : Administrator

--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>   
    <body>
        <jsp:include page="_header.jsp"></jsp:include>
        <jsp:include page="_menu.jsp"></jsp:include>
        <h1>Username or password invalid!!!</h1>
        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>
