<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
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
    </style>
</head>
<body>
    <div class="navbar">
        <a href="index.jsp">Parcel it</a>
    </div>
    <div class="mainC">
        <form action="CustomerServlet" method="post">
            <h2>Login</h2>

            <% String name = (String) request.getAttribute("name");
            if (name != null) { %>
                <div class="message">
                    <% if (name.equals("-1")) { %>
                        User ID not found.
                    <% } else if (name.equals("0")) { %>
                        Incorrect password.
                    <% } %>
                </div>
            <% } %>

            <label for="userId">User ID:</label>
            <input type="text" id="userId" name="userId" minlength="5" maxlength="20" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="pwd" maxlength="30" required>

            <button type="submit" name="action" value="userLogin">Login</button>
        </form>
    </div>
    <footer>
        &copy; 2024 Parcel it. All rights reserved.
    </footer>
</body>
</html>