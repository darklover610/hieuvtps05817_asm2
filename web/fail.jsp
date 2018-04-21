<%-- 
    Document   : fail
    Created on : Sep 24, 2017, 10:21:50 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fail</title>
    </head>
    <body>
        <jsp:include page="_header.jsp"></jsp:include>
        <jsp:include page="_menu.jsp"></jsp:include>
        <h1><font color="red">Username or password invalid!!!</font></h1>
        Click <a href="Controller?btAction=tryAgain">here</a> to try again!<br/>
        Click <a href="Controller?btAction=register">register</a> to register new account<br/>
        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>
