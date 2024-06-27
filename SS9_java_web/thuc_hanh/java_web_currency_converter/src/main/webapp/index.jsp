<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Currency Converter</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body class="input">
    <h1>Currency Converter</h1>
    <form method = "post" action = "${pageContext.request.contextPath}/convert">
      <label>Rate: </label><br/>
      <input type="text" name="rate" placeholder="Rate" value="23000"/>
      <labe>USD: </labe><br/>
      <input type="text" name="usd" placeholder="USD" value="0"/>
      <input type="submit" id = "submit" value="Converter"/>
    </form>
</body>
</html>