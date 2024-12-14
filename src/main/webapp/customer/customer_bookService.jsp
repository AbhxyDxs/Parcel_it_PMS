<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Book a Service</title>
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

        .form-group {
            margin-bottom: 15px;
            text-align: left;
            width: 100%;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
        }

        .form-group input, .form-group select {
            width: 100%;
            padding: 8px;
            border: 1px solid var(--border-color);
            border-radius: 4px;
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
            <h2>Book a Service</h2>
            <form action="BookServiceServlet" method="post">
                <div class="form-group">
                    <label for="customerName">Customer Name:</label>
                    <input type="text" id="customerName" name="customerName" value="<%= session.getAttribute("username") %>" readonly>
                </div>
                <div class="form-group">
                    <label for="customerAddress">Customer Address:</label>
                    <input type="text" id="customerAddress" name="customerAddress" value="<%= session.getAttribute("address") %>" readonly>
                </div>
                <div class="form-group">
                    <label for="customerEmail">Customer Email:</label>
                    <input type="email" id="customerEmail" name="customerEmail" value="<%= session.getAttribute("email") %>" readonly>
                </div>
                <div class="form-group">
                    <label for="customerMobile">Customer Mobile:</label>
                    <input type="text" id="customerMobile" name="customerMobile" value="<%= session.getAttribute("mobile") %>" readonly>
                </div>
                <div class="form-group">
                    <label for="recName">Receiver Name:</label>
                    <input type="text" id="recName" name="recName" required>
                </div>
                <div class="form-group">
                    <label for="recAddress">Receiver Address:</label>
                    <input type="text" id="recAddress" name="recAddress" required>
                </div>
                <div class="form-group">
                    <label for="recPin">Receiver Pin:</label>
                    <input type="text" id="recPin" name="recPin" required>
                </div>
                <div class="form-group">
                    <label for="recMobile">Receiver Mobile:</label>
                    <input type="text" id="recMobile" name="recMobile" required>
                </div>
                <div class="form-group">
                    <label for="parWeight">Parcel Weight (kg):</label>
                    <input type="number" id="parWeight" name="parWeight" step="0.01" required>
                </div>
                <div class="form-group">
                    <label for="contentDescription">Contents Description:</label>
                    <input type="text" id="contentDescription" name="contentDescription" required>
                </div>
                <div class="form-group">
                    <label for="deliveryType">Delivery Type:</label>
                    <select id="deliveryType" name="deliveryType" required>
                        <option value="Standard">Standard</option>
                        <option value="Express">Express</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="packingPref">Packing Preference:</label>
                    <select id="packingPref" name="packingPref" required>
                        <option value="Standard">Standard</option>
                        <option value="Premium">Premium</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="pickupTime">Preferred Pickup Time Slot:</label>
                    <input type="text" id="pickupTime" name="pickupTime" required>
                </div>
                <div class="form-group">
                    <label for="dropoffTime">Preferred Drop Off Time Slot:</label>
                    <input type="text" id="dropoffTime" name="dropoffTime" required>
                </div>
                <div class="form-group">
                    <label for="serviceCost">Service Cost:</label>
                    <input type="text" id="serviceCost" name="serviceCost" readonly>
                </div>
                <button type="submit" class="button">Submit</button>
            </form>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Parcel it. All rights reserved.</p>
    </div>
    <script>
        document.getElementById('parWeight').addEventListener('input', calculateCost);
        document.getElementById('deliveryType').addEventListener('change', calculateCost);
        document.getElementById('packingPref').addEventListener('change', calculateCost);

        function calculateCost() {
            const weight = parseFloat(document.getElementById('parWeight').value) || 0;
            const deliveryType = document.getElementById('deliveryType').value;
            const packingPref = document.getElementById('packingPref').value;

            let cost = weight * 10; // Base cost per kg

            if (deliveryType === 'Express') {
                cost += 20; // Additional cost for express delivery
            }

            if (packingPref === 'Premium') {
                cost += 15; // Additional cost for premium packing
            }

            document.getElementById('serviceCost').value = cost.toFixed(2);
        }
    </script>
</body>
</html>