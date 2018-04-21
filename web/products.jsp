<%-- 
    Document   : index
    Created on : Sep 26, 2016, 9:05:58 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Product"%>
<%@page import="model.ProductsDAO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sản phẩm</title>
        
    </head>
    <body>
        <jsp:include page="_header.jsp"></jsp:include>  	                                                                         
        <jsp:include page="_menu.jsp"></jsp:include>
        <h1>Sản phẩm</h1>
        <table border="1">
            <tr>
                <td><b>Mã sản phẩm</b></td>
                <td><b>Tên sản phẩm</b></td>
                <td><b>Giá</b></td>
            </tr>         
            <c:forEach var="rows" items="${listSP}">
                <form action="ControllerProducts">
                <tr>
                    <td>${rows.code}</td>
                    <td>${rows.name}</td>
                    <td>${rows.price}</td>
                    <c:url var="del" value="ControllerProducts">
                        <c:param name="action" value="Edit"/>
                        <c:param name="txtCode" value="${rows.code}"/>
                        <c:param name="txtName" value="${rows.name}"/>
                        <c:param name="txtPrice" value="${rows.price}"/>
                    </c:url>
                    <td><a href="${del}"><b>Edit</b></a></td>
                    <td>
                        <input type="hidden" name="txtCode" value="${rows.code}";
                        <input type="submit" name="action" value="Delete"/>        
                    </td>
                </tr>
                </form>
            </c:forEach>
        </table>
        <br/>
        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>