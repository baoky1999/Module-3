<%--
  Created by IntelliJ IDEA.
  User: Laptop K1
  Date: 29/06/2024
  Time: 6:17 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>View all customers</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        .button-like-link {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: #ffffff;
            text-align: center;
            text-decoration: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .button-like-link:hover {
            background-color: #0056b3;
        }

        .button-like-link-edit {
            display: inline-block;
            padding: 10px 20px;
            background-color: darkorange;
            color: black;
            text-align: center;
            text-decoration: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .button-like-link-edit:hover {
            background-color: darkorange;
        }
        .button-like-link-delete {
            display: inline-block;
            padding: 10px 20px;
            background-color: red;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .button-like-link-delete:hover {
            background-color: red;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 style="text-align: center">List Customers</h1>
    <a href="management?action=create" class="button-like-link">Create Customer</a>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>STT</th>
            <th>NAME</th>
            <th>Email</th>
            <th>Address</th>
            <th>Options</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="customers" items="${customer}" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td><a href="management?action=view-detail&id=${customers.id}">${customers.name}</a></td>
                <td>${customers.email}</td>
                <td>${customers.address}</td>
                <td>
                    <a href="management?action=edit&id=${customers.id}" class="button-like-link-edit">Edit</a>
                    <a href="management?action=delete&id=${customers.id}" class="button-like-link-delete">Delete</a>
                </td>
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
