<%@ page import="javax.servlet.http.Cookie" %>
<html>
<body>

<%
    String name = request.getParameter("name");
    String domain = request.getParameter("domain");
    int age = Integer.parseInt(request.getParameter("age"));

    // FIX: Use safe cookie name (no spaces)
    String cookieName = "user_" + name.replaceAll(" ", "");

    Cookie cookie = new Cookie(cookieName, name);

    // Set domain (optional)
    if(domain != null && !domain.isEmpty()) {
        cookie.setDomain(domain);
    }

    cookie.setMaxAge(age);

    response.addCookie(cookie);
%>

<h2>Cookie Added Successfully!</h2>

<p><b>Name:</b> <%= cookie.getName() %></p>
<p><b>Value:</b> <%= cookie.getValue() %></p>
<p><b>Domain:</b> <%= domain %></p>
<p><b>Max Age:</b> <%= age %> seconds</p>

<br>
<a href="showCookies.jsp">Go to Active Cookie List</a>

</body>
</html>