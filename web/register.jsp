<%-- 
    Document   : register
    Created on : Sep 24, 2017, 10:22:20 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <jsp:include page="_header.jsp"></jsp:include>
        <jsp:include page="_menu.jsp"></jsp:include>
        <h1>Register Page</h1>
        <form action="Controller" method="post">
            Username <input type="text" name="txtUser" value=""/><br/>
            Password <input type="password" name="txtPass" value=""/><br/>
            Lastname <input type="text" name="txtLast" value=""/><br/>
            Admin <input type="checkbox" name="chkAdmin" value="ADMIN"/><br/>
            <input type="submit" name="btAction" value="Register"/>
        </form>
        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>
