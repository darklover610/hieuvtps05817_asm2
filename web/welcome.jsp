<%-- 
    Document   : welcome
    Created on : Oct 13, 2010, 7:38:59 PM
    Author     : phunglv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <body>
        <jsp:include page="_header.jsp"></jsp:include>
        <jsp:include page="_menu.jsp"></jsp:include>
        <font color="red"> welcome, ${sessionScope.USER}</font>
        <h1>Member account information</h1>
        <form action="Controller">
            Name <input type="text" name="txtSearch" value=""><br/>
            <input type="submit" value="Search" name="btAction"/>
        </form>
        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>








