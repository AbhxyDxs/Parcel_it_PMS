<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
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
        .container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 36px;
        }
        form {
            width: 50%;
            margin: auto;
            background-color: var(--header-bg-color);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-top: 40px;
            text-align: center;
        }
        h2 {
            display: inline-block;
            padding: 5px 10px;
            background-color: var(--pastel-blue);
            color: white;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-top: 10px;
            margin-bottom: 5px;
            font-weight: bold;
            text-align: left;
        }
        input, select {
            width: calc(100% - 20px);
            padding: 8px;
            border: 1px solid var(--border-color);
            border-radius: 5px;
            margin-bottom: 10px;
        }
        .mobile-container {
            display: flex;
            align-items: center;
            gap: 5px;
            margin-bottom: 10px;
        }
        .mobile-container select {
            width: 15%;
            padding: 8px;
            border: 1px solid var(--border-color);
            border-radius: 5px;
        }
        .mobile-container input {
            width: 83%;
            padding: 8px;
            border: 1px solid var(--border-color);
            border-radius: 5px;
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
            right: 2px;
            top: 40%;
            transform: translateY(-50%);
            cursor: pointer;
            color: #666;
        }
        #sub {
            width: 45%;
            padding: 10px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            background-color: var(--pastel-blue);
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        #sub:hover {
            background-color: #003d66;
        }
        .buttons {
            text-align: center;
        }
        #preference {
            width: 100%;
        }
        #clear {
            width: 45%;
            padding: 10px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            background-color: #ea8685;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        #clear:hover{
        	background-color: #ED4C67;
        }
        footer {
            background-color: var(--pastel-blue);
            color: white;
            text-align: center;
            padding: 10px;
            position: relative;
            bottom: 0;
            width: 100%;
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

        function validatePasswords() {
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmPassword").value;
            var registerButton = document.querySelector("button[type='submit']");
            if (password === confirmPassword) {
                registerButton.disabled = false;
            } else {
                registerButton.disabled = true;
            }
        }
    </script>
</head>
<body>
    <div class="navbar">
        <a href="index.jsp">Parcel it</a>
    </div>
    <div class="container">
        <% Integer custId = (Integer) request.getAttribute("custId");
        if (custId != null) { %>
            Customer ID: <%= custId %>
            <% if (custId == -1) { %>
                <script>alert("Registration Failed !!");</script>
            <% } else { %>
                <script>alert("Registration Success !\nCustomer ID: " + <%= custId %>);</script>
            <% } %>
        <% } else { %>
            <form action="CustomerServlet" method="post">
                <h2>Registration Page</h2>

                <label for="name">Customer Name:</label>
                <input type="text" id="name" name="name" maxlength="30" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="mobile">Mobile:</label>
                <div class="mobile-container">
                    <select id="countryCode" name="countryCode">
                        <option value="+91">+91</option>
                    </select>
                    <input type="text" id="mobile" name="mobile" maxlength="10" pattern="[0-9]{10}" title="10-digit mobile number" required>
                </div>

                <label for="address">Address:</label>
                <input type="text" id="address" name="address" maxlength="150" required>

                <label for="preference">Notification Preference:</label>
                <select id="preference" name="pref" required>
                    <option value="Email">Email</option>
                    <option value="Call">Call</option>
                    <option value="SMS">SMS</option>
                </select>

                <label for="password">Password:</label>
                <div class="password-container">
                    <input type="password" id="password" name="pwd" minlength="8" maxlength="30" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 characters" required oninput="validatePasswords()">
                    <span class="eye-icon" onclick="togglePasswordVisibility('password')">
                        <i class="fas fa-eye"></i>
                    </span>
                </div>

                <label for="confirmPassword">Confirm Password:</label>
                <div class="password-container">
                    <input type="password" id="confirmPassword" name="confirmPassword" minlength="8" maxlength="30" required oninput="validatePasswords()">
                    <span class="eye-icon" onclick="togglePasswordVisibility('confirmPassword')">
                        <i class="fas fa-eye"></i>
                    </span>
                </div>

                <div class="buttons">
                    <button type="submit" id="sub" name="action" value="custReg" disabled>Register</button>
                    <button type="reset" id="clear">Clear Form</button>
                </div>
            </form>
        <% } %>
    </div>
    <footer>
        &copy; 2024 Parcel it. All rights reserved.
    </footer>
</body>
</html>