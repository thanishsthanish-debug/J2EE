<%@ page import="javax.servlet.http.Cookie" %>
<html>
<body>

<h2>Active Cookie List</h2>

<%
    Cookie[] cookies = request.getCookies();

    if(cookies != null) {
        for(Cookie c : cookies) {
%>
            <p>
                <b>Name:</b> <%= c.getName() %> <br>
                <b>Value:</b> <%= c.getValue() %>
            </p>
            <hr>
<%
        }
    } else {
%>
        <p>No cookies found.</p>
<%
    }
%>

<br>
<a href="index.jsp">Back to Add Cookie</a>

</body>
</html>