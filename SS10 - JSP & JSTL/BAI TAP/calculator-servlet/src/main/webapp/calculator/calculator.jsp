<%--
  Created by IntelliJ IDEA.
  User: Laptop K1
  Date: 28/06/2024
  Time: 3:47 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Calculator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <h1 class="mb-3">Simple Calculator</h1>
    <form action="calculator" method="post">
        <table class="table table-hover w-50">
            <tr>
                <td>First operand:</td>
                <td><input type="text" name="first" placeholder="Enter your number"></td>
            </tr>
            <tr>
                <td>Operator:</td>
                <td>
                    <select name="operators">
                        <option value="+">Addition</option>
                        <option value="-">Subtraction</option>
                        <option value="*">Multiplication</option>
                        <option value="/">Division</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Second operand:</td>
                <td><label for="input" ></label>
                    <input type="text" id= "input" class="form-control w-50" name="second" placeholder="Enter your number"></td>
            </tr>
        </table>
        <button type="submit" class="btn btn-primary">Calculate</button>
    </form>
</div>
</body>
</html>
