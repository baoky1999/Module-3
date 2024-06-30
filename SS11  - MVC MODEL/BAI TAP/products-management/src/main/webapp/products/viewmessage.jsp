<%--
  Created by IntelliJ IDEA.
  User: Laptop K1
  Date: 30/06/2024
  Time: 12:36 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Notification</title>
    <style>
        h1 {
            color: darkgreen;
            text-align: center;
        }

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
<h1>${message}</h1>
<a href="productsss" class="button-like-link">Back to Customer list</a>
</body>
</html>
