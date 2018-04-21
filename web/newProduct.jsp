<%-- 
    Document   : editProduct
    Created on : Sep 26, 2016, 9:05:58 AM
    Author     : Nghia
--%>

<%@page import="model.Product"%>
<%@page import="model.ProductsDAO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="_header.jsp"></jsp:include>
        <jsp:include page="_menu.jsp"></jsp:include>
        <h1>New Product</h1>
        <form action="ControllerProducts">
            Code: <input type="hidden" name="txtCode" value=""/><br/>           
            Name: <input type="text" name="txtName" value=""/><br/>
            Price: <input type="text" name="txtPrice" value=""/><br/>
            <input type="submit" name="action" value="Insert"/>
        </form>
        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>
