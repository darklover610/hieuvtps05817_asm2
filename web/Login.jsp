<%-- 
    Document   : Login
    Created on : Oct 13, 2010, 7:26:03 PM
    Author     : Nghia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN</title>  
    </head>
    <body>
        <jsp:include page="_header.jsp"></jsp:include>
        <jsp:include page="_menu.jsp"></jsp:include>
        <h1>Admin</h1>
        <form action="Controller" method="post">
            Username <input type="text" name="txtUsername" value=""/><br/>
            Password <input type="password" name="txtPass" value=""/><br/>
            <input type="submit" value="Login" name="btAction"/>
            <input type="reset" value="Reset"/>
        </form>
        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>
