<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Laptop K1
  Date: 28/06/2024
  Time: 1:53 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách khách hàng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        th {
            font-size: 25px;
        }
        td {
            font-size: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 style="text-align: center">Danh sách khách hàng</h1>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Tên</th>
            <th>Ngày sinh</th>
            <th>Địa chỉ</th>
            <th>Ảnh</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="customer" items = "${customers}">
            <tr>
                <td>${customer.name}</td>
                <td>${customer.bod}</td>
                <td>${customer.address}</td>
                <td><img src = "${customer.image}" width="200px" height="200px"  alt = "ảnh"></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
