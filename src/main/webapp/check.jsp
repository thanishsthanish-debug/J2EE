/*7a. Build a Session Management using JSP program set with one minute session expiry
 time to get your name through text box and press submit to display the message by greeting Hello your name!.
  Check the expiry of the session after one minute.*/
<%@ page language="java" %>
<html>
<head>
    <title>Session Check</title>
</head>
<body>

<%
    String user = (String) session.getAttribute("user");

    if (user == null) {
%>
        <h2>Session expired!</h2>
        <a href="index.jsp">Go Back</a>
<%
    } else {
%>
        <h2>Welcome back <%= user %>!</h2>
        <p>Session is still active.</p>
<%
    }
%>

</body>
</html>