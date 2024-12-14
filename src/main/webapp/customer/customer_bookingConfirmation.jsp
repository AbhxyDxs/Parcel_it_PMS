<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Confirmation</title>
    <style>
        :root {
            --background-color: #f9f9f9;
            --header-bg-color: #ffffff;
            --primary-text-color: #222222;
            --secondary-text-color: #888888;
            --accent-color: #ff4f5a;
            --border-color: #e0e0e0;
            --button-color: #ffffff;
            --gradient-color: linear-gradient(to bottom, #ef3b60, #ff8c94);
            --success-color: #28a745;
            --warning-color: #f9a825;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: var(--background-color);
            margin: 0;
            color: var(--primary-text-color);
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            align-items: center;
        }

        .navbar {
            background: var(--header-bg-color);
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
        }

        .navbar a {
            color: var(--primary-text-color);
            text-decoration: none;
            margin: 0 10px;
            font-weight: 600;
        }

        .navbar a:hover {
            color: var(--accent-color);
        }

        .navbar .logout {
            background: var(--gradient-color);
            color: var(--button-color);
            border: none;
            padding: 8px 16px;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            margin-left: 20px;
            margin-right: 20px;
        }

        .navbar .logout:hover {
            opacity: 0.6;
        }

        .container {
            padding: 20px;
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .card {
            background: var(--header-bg-color);
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            width: 80%;
            text-align: center;
        }

        .card h2 {
            margin-top: 0;
        }

        .button {
            background: var(--gradient-color);
            color: var(--button-color);
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            margin-top: 20px;
        }

        .button:hover {
            opacity: 0.6;
        }

        .footer {
            background: var(--header-bg-color);
            padding: 10px 20px;
            text-align: center;
            box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div>
            <a href="customer_dashboard.jsp">Dashboard</a>
            <a href="book_service.jsp">Book a Service</a>
            <a href="track_bookings.jsp">Track Bookings</a>
            <a href="view_orders.jsp">View Previous Orders</a>
            <a href="contact_support.jsp">Contact Support</a>
        </div>
        <div>
            <span>Welcome, <%= session.getAttribute("username") %></span>
            <form action="logout" method="post" style="display:inline;">
                <button type="submit" class="logout">Logout</button>
            </form>
        </div>
    </div>
    <div class="container">
        <div class="card">
            <h2>Booking Confirmation</h2>
            <p>Booking ID: <%= request.getAttribute("bookingId") %></p>
            <p>Total Cost: $<%= request.getAttribute("totalCost") %></p>
            <form action="GenerateInvoiceServlet" method="post">
                <input type="hidden" name="bookingId" value="<%= request.getAttribute("bookingId") %>">
                <button type="submit" class="button">Generate Invoice</button>
            </form>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Parcel it. All rights reserved.</p>
    </div>
</body>
</html>