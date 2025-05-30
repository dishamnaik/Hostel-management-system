<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Delete Student</title>
    <style>
        /* Global Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #c6ffdd, #fbd786, #f7797d); /* vibrant pastel gradient */
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        .container {
            background: #fff;
            border-radius: 16px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 100%;
            max-width: 450px;
            text-align: center;
        }

        h2 {
            font-size: 2rem;
            color: #333;
            margin-bottom: 20px;
            font-weight: 600;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        label {
            font-size: 1.1rem;
            color: #333;
            margin-bottom: 8px;
            font-weight: 500;
            display: block;
        }

        input[type="number"] {
            width: 100%;
            padding: 12px;
            font-size: 1rem;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            outline: none;
            transition: border 0.3s ease;
        }

        input[type="number"]:focus {
            border-color: #f7797d; /* pink accent */
        }

        input[type="submit"] {
            width: 100%;
            padding: 14px;
            background-color: #f7797d; /* vibrant pink */
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1.1rem;
            cursor: pointer;
            font-weight: 600;
            transition: background-color 0.3s ease, transform 0.2s;
        }

        input[type="submit"]:hover {
            background-color: #f56d62; /* darker pink */
            transform: scale(1.05);
        }

        a {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #f7797d;
            font-weight: 600;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Message Styles */
        .message {
            padding: 15px;
            border-radius: 8px;
            margin-top: 20px;
            font-weight: 500;
            color: #fff;
            box-sizing: border-box;
        }

        .success-message {
            background-color: #4caf50;
        }

        .error-message {
            background-color: #f44336;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>🗑️ Delete Student</h2>

        <% 
            String message = (String) request.getAttribute("message");
            if (message != null) {
                String cssClass = message.toLowerCase().contains("success") ? "success-message" : "error-message";
        %>
            <div class="message <%= cssClass %>"><%= message %></div>
        <% } %>

        <form action="DeleteStudentServlet" method="post" novalidate>
            <div class="form-group">
                <label for="id">Enter Student ID to Delete:</label>
                <input type="number" id="id" name="id" min="1" required />
            </div>
            <div class="form-group">
                <input type="submit" value="Delete Student" />
            </div>
        </form>

        <a href="index.jsp">⬅️ Back to Home</a>
    </div>

</body>
</html>
