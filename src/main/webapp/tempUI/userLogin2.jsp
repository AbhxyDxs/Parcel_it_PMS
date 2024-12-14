<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        :root {
            --background-color: #e0f7fa; /* Light bluish background */
            --header-bg-color: #F8F9FA; /* White background for cards */
            --primary-text-color: #222222; /* Dark text */
            --secondary-text-color: #888888; /* Subtle gray */
            --accent-color: #ff4f5a; /* Red/pinkish accent */
            --border-color: #e0e0e0; /* Light gray for borders */
            --button-color: #ffffff; /* Buttons background */
            --gradient-color: linear-gradient(to bottom, #ef3b60, #ff8c94);
            --success-color: #28a745; /* Green for success text */
            --warning-color: #f9a825; /* Yellow for warnings */
            --pastel-green: #38ada9; /* Pastel green */
            --pastel-blue: #4a69bd; /* Pastel blue */
            --title-bg-color: #b2ebf2; /* Light blue background for title */
        }
        body {
            font-family: 'Poppins', sans-serif;
            background: var(--background-color);
            margin: 0;
            color: var(--primary-text-color);
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            text-align: center;
        }
        .navbar {
            background-color: var(--pastel-blue);
            padding: 10px;
            text-align: left;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            font-size: 24px;
            font-weight: bold;
            text-decoration:underline overline;
        }
        .mainC {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        form {
            background-color: var(--header-bg-color);
            width: 300px;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); /* Soft shadow */
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: var(--pastel-blue); /* Dark blue heading */
            font-weight: bold;
            padding: 10px 0;
        }
        label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            font-weight: bold;
            color: var(--primary-text-color); /* Dark text color */
        }
        input {
            width: calc(100% - 20px); /* Full width with padding */
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid var(--border-color);
            border-radius: 5px;
            font-size: 14px;
        }
        input:focus {
            outline: none;
            border-color: var(--pastel-blue); /* Highlighted border */
            box-shadow: 0px 0px 4px rgba(0, 95, 153, 0.6); /* Glow effect */
        }
        .password-container {
            position: relative;
            margin-bottom: 10px;
            width: 98%;
        }
        .password-container input {
            width: 100%;
        }
        .eye-icon {
            position: absolute;
            right: 7px;
            top: 35%;
            transform: translateY(-50%);
            cursor: pointer;
            color: #666;
        } 
        button {
            width: 100%;
            padding: 10px;
            background-color: var(--pastel-blue);
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #003d66; /* Darker blue on hover */
        }
        .message {
            margin-bottom: 20px;
            font-size: 16px;
            color: var(--accent-color); /* Red/pinkish accent for error messages */
        }
        footer {
            background-color: var(--pastel-blue);
            color: white;
            text-align: center;
            padding: 10px;
            width: 100%;
            position: relative;
            bottom: 0;
        }
        .toggle-container {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }
        .toggle-button {
            padding: 10px 20px;
            cursor: pointer;
            border: 1px solid var(--border-color);
            border-radius: 5px;
            margin: 0 5px;
            background-color: var(--header-bg-color);
        }
        .toggle-button.active {
            background-color: var(--pastel-blue);
            color: white;
        }
    </style>
    <script>
        function togglePasswordVisibility(id) {
            var passwordField = document.getElementById(id);
            var eyeIcon = passwordField.nextElementSibling.querySelector('i');
            if (passwordField.type === "password") {
                passwordField.type = "text";
                eyeIcon.classList.remove('fa-eye');
                eyeIcon.classList.add('fa-eye-slash');
            } else {
                passwordField.type = "password";
                eyeIcon.classList.remove('fa-eye-slash');
                eyeIcon.classList.add('fa-eye');
            }
        }

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
    <div class="navbar">
        <a href="index.jsp">Parcel it</a>
    </div>
    <div class="mainC">
    	
        <form action="CustomerServlet" method="post">
        	<h2>Log in</h2>
            <div class="toggle-container">
                <div id="customerButton" class="toggle-button active" onclick="toggleLogin('Customer')">Customer</div>
                <div id="officerButton" class="toggle-button" onclick="toggleLogin('Officer')">Officer</div>
            </div>
            <input type="hidden" id="userType" name="userType" value="Customer">
			
            <% String name = (String) request.getAttribute("name");
            if (name != null) { %>
                <div class="message">
                    <% if (name.equals("-1")) { %>
                        User ID not found !
                    <% } else if (name.equals("0")) { %>
                        Incorrect Password !
                    <% } %>
                </div>
            <% } %>

            <label for="userId">User ID:</label>
            <input type="text" id="userId" name="userId" minlength="5" maxlength="20" pattern="[1][0-9]{4,19}" title="Enter your numeric User ID." required>

            <label for="password">Password:</label>
            <div class="password-container">
                <input type="password" id="password" name="pwd" minlength="8" maxlength="30" required>
                <span class="eye-icon" onclick="togglePasswordVisibility('password')">
                    <i class="fas fa-eye"></i>
                </span>
            </div>
            
            <button type="submit" name="action" value="userLogin">Login</button>
        </form>
    </div>
    <footer>
        &copy; 2024 Parcel it. All rights reserved.
    </footer>
</body>
</html>