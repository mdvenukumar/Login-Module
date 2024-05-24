<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);

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
