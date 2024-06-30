<%--
  Created by IntelliJ IDEA.
  User: Laptop K1
  Date: 29/06/2024
  Time: 11:40 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
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
<h1>Delete Product</h1>
<p>
    <a href="productsss" class="button-like-link">Back to Product list</a>
</p>
<form method="post">
    <h3>Are you sure you want to delete it? </h3>
    <fieldset>
        <legend>Product information</legend>
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
            <tr>
                <td><input type="submit" value="Delete Product"></td>
                <td style="color: red">This action cannot be undone!!!</td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
