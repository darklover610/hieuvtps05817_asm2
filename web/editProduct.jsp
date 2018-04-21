<%-- 
    Document   : editProduct
    Created on : Sep 26, 2016, 9:05:58 AM
    Author     : Nghia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Product</title>
    </head>
    <body>
        <jsp:include page="_header.jsp"></jsp:include>
        <jsp:include page="_menu.jsp"></jsp:include>
        <h1>Edit Product</h1>     
        <form action="ControllerProducts">
            Code:${SP.code}<br/>
            <input type="hidden" name="txtCode" value="${SP.code}"/>
            Name: <input type="text" name="txtName" value="${SP.name}"/><br/>
            Price: <input type="text" name="txtPrice" value="${SP.price}"/><br/>
            <input type="submit" name="action" value="Update"/>
        </form>
        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>
