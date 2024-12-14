<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login - Parcel Management System</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="styles.css">
    <script>
        function toggleLogin(type) {
            document.getElementById('userType').value = type;
            document.getElementById('customerButton').classList.remove('active');
            document.getElementById('officerButton').classList.remove('active');
            if (type === 'Customer') {
                document.getElementById('customerButton').classList.add('active');
            } else {
                document.getElementById('officerButton').classList.add('active');
            }
        }
    </script>
</head>
<body>
	<jsp:include page="navBar.jsp" />
    <div class="LoginContainer">
        <h1>Login</h1>
        <div class="toggle-container">
            <div id="customerButton" class="toggle-button active" onclick="toggleLogin('Customer')">Customer</div>
            <div id="officerButton" class="toggle-button" onclick="toggleLogin('Officer')">Officer</div>
        </div>
        <form action="user" method="post">
            <input type="hidden" name="action" value="login">
            <input type="hidden" id="userType" name="userType" value="Customer">
            <input type="text" name="userid" placeholder="User ID" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit" class="button">Login</button>
        </form>
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>