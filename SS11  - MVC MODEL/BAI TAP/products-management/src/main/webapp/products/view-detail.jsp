<%--
  Created by IntelliJ IDEA.
  User: Laptop K1
  Date: 29/06/2024
  Time: 11:41 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Detail</title>
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
    </style>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="productsss" class="button-like-link">Back to product list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
        <td>Producer: </td>
        <td>${requestScope["product"].getProducer()}</td>
    </tr>
    <tr>
        <td>Price: </td>
        <td>${requestScope["product"].getPrice()}</td>
    </tr>
    <tr>
        <td>Image: </td>
        <td><img src="${requestScope["product"].getImage()}" alt="image" width="200px" height="200px"/></td>
    </tr>
</table>
</body>
</html>
