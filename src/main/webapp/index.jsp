<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Parcel it - PMS</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <jsp:include page="navBar.jsp" />
    <div class="container">
        <h1>Parcel it</h1>
        <h3>Parcel Management System</h3>
        <div>
            <a href="register.jsp" class="button">Register</a>
            <a href="login.jsp" class="button">Login</a>
        </div>
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>