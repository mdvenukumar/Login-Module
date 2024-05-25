<%--
  Created by IntelliJ IDEA.
  User: venuk
  Date: 24-05-2024
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Videos</title>
</head>
<body>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.

    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<iframe width="560" height="315" src="https://www.youtube.com/embed/Sqpj4KQDHgU?si=4YylAQknaN_-rF1S" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
<br>
<br>
<a href="welcome.jsp">
    <button>Return to DashBoard</button>
</a>
<form action="logout" method="post">
    <button type="submit">LogOut</button>
</form>

</body>
</html>
