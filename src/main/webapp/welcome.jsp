<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setDateHeader("Expires", 0);  // Proxies

    if (session.getAttribute("username") == null) { // Check for "username"
        response.sendRedirect("login.jsp");
        return;
    }
%>

You are logged In, Welcome ${sessionScope.username} <!-- Display the session attribute -->
<br>
<form action="logout" method="post">
    <button type="submit">LogOut</button>
</form>
<a href="videos.jsp"><button>Videos</button></a>
</body>
</html>
