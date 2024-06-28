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
</head>
<body>
<h1>Simple Calculator</h1>
<form action="calculator" method="post">
    <table>
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
            <td><input type="text" name="second" placeholder="Enter your number"></td>
        </tr>
    </table>
    <button type="submit">Calculate</button>
</form>
</body>
</html>
