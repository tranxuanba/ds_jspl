<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="demo.ListCustomer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ishopjapan
  Date: 18/08/2022
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style >
        table{
            text-align: center;
            font-size: 40px;
            width: 100%;
            height: 40%;
            border-collapse: collapse;
        }
        #y{
            width: 120px;
            height: 80px;
        }
        img{
            margin-inside: 10px;
            width: 120px;
            height: 80px;
        }
    </style>
    <title>List of customers</title>
    <%
        List<ListCustomer> listCustomers = new ArrayList<>();
        listCustomers.add(new ListCustomer("batran", "21/07/1995", "Thai Binh", "https://img.meta.com.vn/Data/image/2022/01/13/anh-dep-thien-nhien-3.jpg"));
        listCustomers.add(new ListCustomer("Hoang", "11/07/1998", "Ha Nam", "https://img.meta.com.vn/Data/image/2022/01/13/anh-dep-thien-nhien-3.jpg"));
        listCustomers.add(new ListCustomer("Duc Anh", "21/07/1995", "Thai Binh", "https://img.meta.com.vn/Data/image/2022/01/13/anh-dep-thien-nhien-3.jpg"));
        listCustomers.add(new ListCustomer("batafdran", "21/07/1995", "Thai Binh", "https://img.meta.com.vn/Data/image/2022/01/13/anh-dep-thien-nhien-3.jpg"));
        request.setAttribute("ds", listCustomers);
    %>
</head>
<body>
    <table style border="3px"   width="400px"  >
        <tr>
            <td>ten</td>
            <td>ngay sinh</td>
            <td>dia chi</td>
            <td>anh</td>
        </tr>
        <c:forEach var="cus" items="${ds}">
            <tr>
                <td>${cus.name}</td>
                <td>${cus.date}</td>
                <td>${cus.address}</td>
                <td id="y"><img src="${cus.anh}"></td>
            </tr>
        </c:forEach>
    </table>
</body>

</html>
