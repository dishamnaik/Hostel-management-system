<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Update Student</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #d0f0f7, #ffe9d6); /* light blue-green to peach */
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 60px auto;
            background: #f9fdfd; /* very light aqua */
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 16px rgba(0, 105, 105, 0.1); /* teal shadow */
        }

        h2 {
            text-align: center;
            color: #00796b; /* dark teal */
            margin-bottom: 30px;
            text-shadow: 1px 1px 2px #cde9e4; /* soft aqua highlight */
        }

        label {
            font-weight: bold;
            color: #004d40; /* dark green-teal */
        }

        input[type="text"],
        input[type="number"],
        input[type="date"] {
            width: 100%;
            padding: 12px;
            margin-top: 6px;
            margin-bottom: 20px;
            border: 1px solid #a7d7d1; /* soft teal */
            border-radius: 10px;
            background: #f0f9f9; /* very light aqua */
            box-shadow: inset 0 1px 3px rgba(0, 105, 105, 0.1);
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="date"]:focus {
            border-color: #ffab91; /* soft peach */
            box-shadow: 0 0 5px rgba(255, 171, 145, 0.5);
            outline: none;
        }

        .btn-group {
            display: flex;
            gap: 15px;
        }

        .btn {
            flex: 1;
            padding: 12px;
            border: none;
            border-radius: 30px;
            font-size: 1em;
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: 600;
        }

        .btn-update {
            background-color: #00796b; /* teal */
            color: white;
        }

        .btn-update:hover {
            background-color: #009688; /* lighter teal */
            transform: scale(1.03);
        }

        .btn-home {
            background-color: #ffab91; /* soft peach */
            color: #4e342e; /* dark brown */
        }

        .btn-home:hover {
            background-color: #ff8a65; /* deeper peach */
            transform: scale(1.03);
        }

        .alert {
            margin-top: 20px;
            padding: 15px;
            background-color: #ffe0cc; /* light peach */
            color: #b25636; /* deep peach */
            border-radius: 10px;
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Update Student Details</h2>

    <form action="UpdateStudentServlet" method="post" novalidate>
        <label for="id">Student ID</label>
        <input type="number" id="id" name="id" required min="1">

        <label for="name">Student Name</label>
        <input type="text" id="name" name="name" required maxlength="100">

        <label for="roomNumber">Room Number</label>
        <input type="text" id="roomNumber" name="roomNumber" required maxlength="10">

        <label for="admissionDate">Admission Date</label>
        <input type="date" id="admissionDate" name="admissionDate" required>

        <label for="feesPaid">Fees Paid</label>
        <input type="number" step="0.01" id="feesPaid" name="feesPaid" required min="0">

        <label for="pendingFees">Pending Fees</label>
        <input type="number" step="0.01" id="pendingFees" name="pendingFees" required min="0">

        <div class="btn-group">
            <button type="submit" class="btn btn-update">Update</button>
            <a href="index.jsp" class="btn btn-home">Home</a>
        </div>
    </form>

    <% if (request.getAttribute("message") != null) { %>
        <div class="alert">
            <%= request.getAttribute("message") %>
        </div>
        <script>
            setTimeout(() => {
                window.location.href = 'index.jsp';
            }, 4000);
        </script>
    <% } %>
</div>
</body>
</html>
