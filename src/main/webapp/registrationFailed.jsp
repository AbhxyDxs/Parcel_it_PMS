<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Failed - Parcel Management System</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        :root {
            --background-color: #f9f9f9; /* Light background */
            --header-bg-color: #ffffff; /* White background for cards */
            --primary-text-color: #222222; /* Dark text */
            --secondary-text-color: #888888; /* Subtle gray */
            --accent-color: #ff4f5a; /* Red/pinkish accent */
            --border-color: #e0e0e0; /* Light gray for borders */
            --button-color: #ffffff; /* Buttons background */
            --gradient-color: linear-gradient(to bottom, #ef3b60, #ff8c94);
            --success-color: #28a745; /* Green for success text */
            --warning-color: #f9a825; /* Yellow for warnings */
        }
        body {
            font-family: 'Poppins', sans-serif;
            background: var(--background-color);
            margin: 0;
            color: var(--primary-text-color);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: var(--header-bg-color);
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 400px;
        }
        h1 {
            margin-bottom: 20px;
            color: var(--accent-color);
        }
        .button {
            background: var(--gradient-color);
            color: var(--button-color);
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
            margin: 10px;
            display: inline-block;
            text-decoration: none; /* Remove underline */
        }
        .button:hover {
            opacity: 0.6;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Registration Failed</h1>
        <p>There was an error processing your registration. Please try again.</p>
        <a href="register.jsp" class="button">Back to Register</a>
    </div>
</body>
</html>