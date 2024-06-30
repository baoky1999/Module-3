<%--
  Created by IntelliJ IDEA.
  User: Laptop K1
  Date: 29/06/2024
  Time: 11:40 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Show Products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        h1 {
            text-align: center;
        }
        .button-like-link {
            display: inline-block;
            padding: 10px 20px;
            margin: 20px;
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
            margin-top: 30px;
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
            background-color: crimson;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .button-like-link-delete:hover {
            background-color: crimson;
        }
        .size {
            width: 300px;
            margin-left: 1200px;
        }
    </style>
</head>
<body>
<div class="container-fuild">
    <h1>List Product</h1>
    <a href="productsss?action=create" class="button-like-link">Create Product</a>
    <form class="d-flex size" action="productsss?action=search" method="post">
        <input class="form-control me-2" type="search" name="name" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
    <table class="table table-dark table-hover" style="text-align: center">
        <thead>
            <tr>
                <th>STT</th>
                <th>Name</th>
                <th>Producer</th>
                <th>Price</th>
                <th>image</th>
                <th>Options</th>
                <th>Detail</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${products}" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${product.name}</td>
                <td>${product.producer}</td>
                <td>${product.price}$</td>
                <td><img src="${product.image}" alt = "image" width="100px" height="100px"/></td>
                <td>
                    <a href="productsss?action=edit&id=${product.id}" class="button-like-link-edit">Edit</a>
                    <a href="productsss?action=delete&id=${product.id}" class="button-like-link-delete">Delete</a>
                </td>
                <td>
                    <a href="productsss?action=view-detail&id=${product.id}" class="button-like-link">Detail</a>
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
