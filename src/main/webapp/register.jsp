<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register - Parcel Management System</title>
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
            text-decoration: none;
        }
        .button:hover {
            opacity: 0.6;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        input[type="text"], input[type="email"], input[type="password"], select {
            padding: 10px;
            margin: 10px 0;
            border: 1px solid var(--border-color);
            border-radius: 8px;
            width: 95%;
        }
        .mobile-container {
            display: flex;
            align-items: center;
            width: 100%;
            
        }
        .mobile-container select {
            margin-right: 10px;
            width: 20%;
            opacity: 0.7;
        }
        .mobile-container input {
            width: 80%;
        }
        #prefSelect{
        width: 100%;
        opacity: 0.6;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Register</h1>
        <form action="user" method="post">
            <input type="hidden" name="action" value="register">
            <input type="text" name="name" placeholder="Name" maxlength="50" required>
            <input type="email" name="email" placeholder="Email" required>
            <div class="mobile-container">
                <select name="countryCode" required>
                    <option value="+91">+91</option>
                </select>
                <input type="text" name="mobile" placeholder="Mobile" required>
            </div>
            <input type="text" name="address" placeholder="Address" required>
            <select id ="prefSelect" name="preference" required>
                <option value="call" >Notification by Call</option>
                <option value="email">Notification by Email</option>
                <option value="sms">Notification by SMS</option>
            </select>
            <input type="password" id="password" name="password" placeholder="Password" maxlength="30" required>
            <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" maxlength="30" required>
            <button type="submit" class="button">Register</button>
            <button type="reset" class="button">Reset</button>
        </form>
    </div>
</body>
</html>