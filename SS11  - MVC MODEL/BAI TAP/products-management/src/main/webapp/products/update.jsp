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
    <title>Edit Product</title>
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
<h1>Edit customer</h1>
<p>
    <a href="productsss" class="button-like-link">Back to Product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><label for="name"></label><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
            </tr>
            <tr>
                <td>Producer: </td>
                <td><label for="producer"></label><input type="text" name="producer" id="producer" value="${requestScope["product"].getProducer()}"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><label for="price"></label><input type="text" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
            </tr>
            <tr>
                <td>Image: </td>
                <td><label for="image"></label><input type="text" name="image" id="image" value="${requestScope["product"].getImage()}">
                <img src="${requestScope["product"].getImage()}" alt="image" width="200px" height="200px"/></td>
            </tr>
            <tr>
                <td></td>
                <td><button type="submit">Update Product</button></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
