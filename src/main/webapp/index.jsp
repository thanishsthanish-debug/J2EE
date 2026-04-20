/*7b. Construct a Cookie Management program using JSP to get the fields Name, Domain and Max Expiry Age ( in sec) and press the button
 Add Cookie for displaying the set cookie information. Then it has to go to show the active cookie list when you press the link go to the active cookie list*/

<html>
<head>
    <title>Cookie Management</title>
</head>
<body>
    <h2>Add Cookie</h2>

    <form action="addCookie.jsp" method="post">
        Name: <input type="text" name="name" required><br><br>
        Domain: <input type="text" name="domain" value="localhost"><br><br>
        Max Age (seconds): <input type="number" name="age" required><br><br>

        <input type="submit" value="Add Cookie">
    </form>

    <br><br>
    <a href="showCookies.jsp">Go to Active Cookie List</a>
</body>
</html>