<%-- 
    Document   : index
    Created on : Sep 26, 2016, 9:05:58 AM
    Author     : Nghia
--%>

<%@page import="model.Product"%>
<%@page import="model.Products"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Trang chủ</title>       
    </head>
    <body>
        <jsp:include page="_header.jsp"></jsp:include>  	                                                                         
        <jsp:include page="_menu.jsp"></jsp:include>
        <h1 style="color:red;">Sản phẩm</h1>
        <table border="1">
            <tr>
                <td><b>Mã sản phẩm</b></td>
                <td><b>Tên sản phẩm</b></td> 
                <td><b>Giá</b></td>
            </tr>
            <%
            Products listSP = new Products();
                List<Product> list = listSP.showProduct("");
                for(Product sp:list){
                   out.print("<form action=\"ControllerCartBean\">");
                   out.print("<tr><td>"+sp.getCode()+"</td><td>"+sp.getName()+ "</td>"+
                   "<td>"+sp.getPrice()+"</td><td><input type=\"submit\" "
                   + "value=\"Thêm vào giỏ\" name=\"action\" /></td>"
                   + "<input type=\"hidden\" name=\"txtCode\" value='" +sp.getCode() + "'>"
                   + "<input type=\"hidden\" name=\"txtName\" value='" +sp.getName() + "'>"
                   + "<input type=\"hidden\" name=\"txtPrice\" value='" +sp.getPrice() + "'></tr>");
                out.print("</form>");
               }          
            %>
        </table>
        <form action="ControllerCartBean">
            <input type="submit" value="Giỏ hàng" name="action" />
        </form>
        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>