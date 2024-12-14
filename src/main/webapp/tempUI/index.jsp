<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Parcel it - PMS</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
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
            padding: 5px 10px;
            text-decoration:underline overline;
        }
        .mainC {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            background: var(--header-bg-color);
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px;
        }
        h1 {
            margin-bottom: 20px;
        }
        h4 {
            margin-bottom: 20px;
        }
        h2 {
            margin-bottom: 20px;
        }
        .button {
            color: var(--button-color);
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
            margin: 10px;
            display: inline-block;
            text-decoration: none;
        }
        .button:hover {
            opacity: 0.6;
        }
        .button-register {
            background: var(--pastel-green);
        }
        .button-login {
            background: var(--pastel-blue);
        }
        footer {
            background-color: var(--pastel-blue);
            color: white;
            text-align: center;
            padding: 10px;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="index.jsp">Parcel it</a>
    </div>
    <div class="mainC">
        <div class="container">
            <h2>Welcome!</h2>
            <h4>Choose an option to continue</h4>
            <div>
                <a href="reg.jsp" class="button button-register">Register</a>
                <a href="userLogin.jsp" class="button button-login">Login</a>
            </div>
        </div>
    </div>
    <footer>
        &copy; 2024 Parcel it. All rights reserved.
    </footer>
</body>
</html>