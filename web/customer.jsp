<%-- 
    Document   : customer
    Created on : Oct 4, 2017, 10:44:24 PM
    Author     : USER
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Khách hàng</title>
    </head>
    <body>
        <jsp:include page="_header.jsp"></jsp:include>  	                                                                         
        <jsp:include page="_menu.jsp"></jsp:include>
        <h1>Welcome, ${sessionScope.USER}</h1>
        <c:set var="shop" value="${sessionScope.SHOP}" />
        <c:if test="${not empty shop}">
            <table border="1">
                <thread>
                    <tr>
                        <td>STT</td>
                        <td></td>
                        <td>Mã sản phẩm</td>
                        <td>Tên sản phẩm</td>
                        <td>Giá</td>
                        <td>Số lượng</td>
                    </tr>
                </thread>
                <tbody>
                <form action="ControllerCartBean">
                    Tên sản phẩm: <input type="text" name="txtTenKH" value=""/>
                    <input type="submit" name="action" value="Search"/>
                    <c:set var="count" value="0" />
                    <c:forEach var="rows" items="${shop}">
                        <c:set var="count" value="${count + 1}" />
                        <tr>
                            <td>${count}</td>
                            <td>${rows.value.sanpham.code}</td>
                            <td>${rows.value.sanpham.name}</td>
                            <td>${rows.value.sanpham.price}</td>
                            <td>${rows.value.quantity}</td>
                            <td><input type="checkbox" name="rmv"
                                value="${rows.value.sanpham.code}" /></td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <c:url var="add" value="ControllerCartBean">
                            <c:param name="action" value="Thêm sản phẩm"/>
                        </c:url>
                        <td colspan="2"><a href="${add}"><b>Thêm sản phẩm</b></a></td>
                        <td><input type="submit" value="Xóa" name="action"/></td>
                    </tr>
                </form>
                </tbody>
            </table>
        </c:if>
        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>
