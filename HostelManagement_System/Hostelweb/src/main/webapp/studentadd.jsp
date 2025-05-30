<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Student</title>
    <style>
        /* General styles reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', sans-serif;
            background: #F4F9FF; /* soft background */
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        .form-wrapper {
            background: #ffffff;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            padding: 40px 35px;
            width: 100%;
            max-width: 600px;
        }

        h2 {
            text-align: center;
            color: #5B7DB1; /* soft blue */
            font-size: 2.4rem;
            margin-bottom: 25px;
            font-weight: 500;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-size: 1.1rem;
            color: #333;
        }

        input[type="text"],
        input[type="number"],
        input[type="date"] {
            width: 100%;
            padding: 14px;
            font-size: 1rem;
            border: 2px solid #D1D8E0; /* light border */
            border-radius: 8px;
            margin-bottom: 18px;
            transition: all 0.3s ease-in-out;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="date"]:focus {
            border-color: #5B7DB1;
            box-shadow: 0 0 8px rgba(91, 125, 177, 0.3);
            outline: none;
        }

        input[type="submit"] {
            background-color: #5B7DB1;
            color: white;
            padding: 14px;
            border: none;
            border-radius: 30px;
            font-size: 1.1rem;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
        }

        input[type="submit"]:hover {
            background-color: #3B5F80;
            transform: scale(1.05);
        }

        a {
            display: block;
            text-align: center;
            margin-top: 25px;
            font-size: 1rem;
            color: #5B7DB1;
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s ease-in-out;
        }

        a:hover {
            color: #3B5F80;
        }

        /* Responsive styling for small devices */
        @media (max-width: 768px) {
            .form-wrapper {
                padding: 25px 20px;
                max-width: 90%;
            }

            h2 {
                font-size: 2rem;
            }

            input[type="submit"] {
                padding: 12px;
                font-size: 1rem;
            }
        }

        @media (max-width: 480px) {
            .form-wrapper {
                padding: 20px 15px;
                max-width: 100%;
            }

            h2 {
                font-size: 1.8rem;
            }

            input[type="submit"] {
                padding: 10px;
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>

    <div class="form-wrapper">
        <h2>📝 Add New Student</h2>
        <form action="AddStudentServlet" method="post">
            <label for="studentId">Student ID:</label>
            <input type="number" id="studentId" name="studentId" required>

            <label for="studentName">Student Name:</label>
            <input type="text" id="studentName" name="studentName" required>

            <label for="roomNumber">Room Number:</label>
            <input type="text" id="roomNumber" name="roomNumber" required>

            <label for="admissionDate">Admission Date:</label>
            <input type="date" id="admissionDate" name="admissionDate" required>

            <label for="feesPaid">Fees Paid:</label>
            <input type="number" step="0.01" id="feesPaid" name="feesPaid" required>

            <label for="pendingFees">Pending Fees:</label>
            <input type="number" step="0.01" id="pendingFees" name="pendingFees" required>

            <input type="submit" value="Add Student">
        </form>
        <a href="index.jsp">← Back to Home</a>
    </div>

</body>
</html>
