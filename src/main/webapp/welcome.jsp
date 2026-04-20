<%@ page language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>

<%
    String name = request.getParameter("username");
    int minutes = Integer.parseInt(request.getParameter("time"));

    // Store name in session
    session.setAttribute("user", name);

    // Convert minutes to seconds and set session expiry
    session.setMaxInactiveInterval(minutes * 60);
%>

<h2>Hello <%= name %>!</h2>
<p>Session will expire in <%= minutes %> minute(s).</p>

<a href="check.jsp">Click here to check session</a>

</body>
</html>