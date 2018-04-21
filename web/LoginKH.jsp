<%-- 
    Document   : Login
    Created on : Oct 13, 2010, 7:26:03 PM
    Author     : phunglv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>        
    </head>
    <body>        
        <jsp:include page="_header.jsp"></jsp:include>  	                                                                         
        <jsp:include page="_menu.jsp"></jsp:include>
        <h1>Đăng nhập</h1>
        <form action="ControllerCustomers" method="post">
            Username <input type="text" name="txtUser" value=""/><br/>
            Password <input type="password" name="txtPass" value=""/><br/>
            <input type="submit" name="action" value="LoginKH"/>
            <input type="reset" name="Reset" value="Reset"/>
        </form>
        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>

