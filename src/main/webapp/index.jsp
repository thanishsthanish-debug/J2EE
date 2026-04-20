<%@ page language="java" %>
<html>
<head>
    <title>User Form</title>

    <script>
        function validateForm() {
            let name = document.forms["form"]["username"].value;
            let email = document.forms["form"]["email"].value;
            let designation = document.forms["form"]["designation"].value;

            if (name === "" || email === "" || designation === "") {
                alert("All fields are required!");
                return false;
            }

            // Simple email validation
            let pattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
            if (!email.match(pattern)) {
                alert("Invalid email format!");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>

<h2>User Details Form</h2>

<form name="form" action="UserDataServlet" method="post" onsubmit="return validateForm()">

    Username: <input type="text" name="username"><br><br>
    Email: <input type="text" name="email"><br><br>
    Designation: <input type="text" name="designation"><br><br>

    <input type="submit" value="Submit">

</form>

</body>
</html>