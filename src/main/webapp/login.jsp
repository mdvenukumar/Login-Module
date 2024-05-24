<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<form action="login" method="post">
    <label for="uname">Username:</label>
    <input type="text" id="uname" name="uname" required><br>
    <label for="pass">Password:</label>
    <input type="password" id="pass" name="pass" required><br>
    <button type="submit">Login</button>
</form>
</body>
</html>
