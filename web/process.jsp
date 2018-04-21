<%-- 
    Document   : process
    Created on : Oct 13, 2016, 7:28:13 PM
    Author     : nghia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Page</h1>
        <jsp:useBean id="login" class="poly.bean.LoginBeanKH" scope="session" />
        <jsp:setProperty name="LoginKH" property="*"/>
        <c:if test="${login.isCheckLogin()}">
            <c:redirect url="welcome.jsp"/>
        </c:if>
        <c:if test="${not login.isCheckLogin()}">
            Invalid username or password!
        </c:if>
    </body>
</html>
