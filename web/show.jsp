<%-- 
    Document   : show
    Created on : Sep 24, 2017, 10:22:36 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show</title>
    </head>
    <body>
        <jsp:include page="_header.jsp"></jsp:include>
        <jsp:include page="_menu.jsp"></jsp:include>
        <h1>Show members</h1>
        <c:set var="info" value="${requestScope.INFO}" />
        <c:if test="${not empty info}">
        <table border="1">
            <thread>
                <tr>
                    <td><b>No</td><td><b>Username</td><td><b>Lastname</td><td><b>Roles</td>
                    <td><b>Delete</td><td><b>Update</b></td>
                </tr>
            </thread>
            <tbody>
                <c:set var="count" value="0"/>
                <c:forEach var="rows" items="${info}">
                <form action="Controller">
                    <c:set var="count" value="${count + 1}"/>
                    <tr>
                        <td>${count}</td>
                        <td>${rows.username}
                            <input type="hidden" name="txtUsername" value="${rows.username}"/>
                        </td>
                        <td><input type="text" name="txtLast" value="${rows.lastname}"/></td>
                        <td><input type="checkbox" name="chkAdmin" value="ADMIN"
                            <c:if test="${rows.roles}">checked</c:if> />
                        </td>
                        <c:url var="delete" value="Controller">
                            <c:param name="btAction" value="Delete"/>
                            <c:param name="username" value="${rows.username}"/>
                            <c:param name="txtSearch" value="${param.txtSearch}"/>
                        </c:url>
                        <td><a href="${delete}">Delete</a></td>
                        <td>
                            <input type="hidden" name="txtSearch" value="${param.txtSearch}"/>
                            <input type="submit" value="Update" name="btAction" />
                        </td>
                    </tr>
                </form>
                </c:forEach>
            </tbody>
        </table>
        </c:if>
        <c:url var="back" value="Controller">
            <c:param name="btAction" value="Back"/>
        </c:url>
        <a href="${back}"><b>Quay tro lai trang bang Search</b></a>
        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>
