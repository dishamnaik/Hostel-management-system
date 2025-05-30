<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generate Student Reports</title>
    <style>
        /* Reset Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #dbeafe, #a5d8ff); /* light to sky blue */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background-color: #f7fafc; /* very light gray */
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 24px rgba(0, 64, 128, 0.1);
            width: 100%;
            max-width: 650px;
            transition: all 0.3s ease;
        }

        .form-container:hover {
            box-shadow: 0 12px 40px rgba(0, 64, 128, 0.2);
        }

        h2 {
            text-align: center;
            font-size: 2.2em;
            color: #1e3a8a;
            margin-bottom: 30px;
            font-weight: 600;
            text-shadow: 1px 1px 2px #dbeafe;
        }

        .radio-group {
            display: flex;
            flex-direction: column;
            margin-bottom: 20px;
        }

        .radio-group label {
            font-size: 1.1rem;
            color: #003366;
            margin-bottom: 8px;
        }

        input[type="radio"] {
            margin-right: 10px;
        }

        input[type="text"],
        input[type="date"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #aad4ff;
            border-radius: 8px;
            font-size: 1rem;
            background-color: #ffffff;
            margin-top: 6px;
        }

        input[type="text"]:focus,
        input[type="date"]:focus {
            border-color: #1e3a8a;
            outline: none;
            box-shadow: 0 0 5px rgba(30, 58, 138, 0.2);
        }

        input[type="submit"] {
            width: 100%;
            padding: 14px;
            background-color: #1e3a8a;
            color: white;
            font-size: 1.1rem;
            font-weight: bold;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s, transform 0.2s;
            box-shadow: 2px 4px 6px rgba(0, 64, 128, 0.15);
        }

        input[type="submit"]:hover {
            background-color: #2c5282;
            transform: scale(1.03);
        }

        .back-link {
            text-align: center;
            display: block;
            margin-top: 30px;
            text-decoration: none;
            font-size: 1rem;
            font-weight: 600;
            color: #1e3a8a;
            transition: color 0.3s;
        }

        .back-link:hover {
            color: #2c5282;
        }

        .form-description {
            font-size: 1.1rem;
            color: #4a4a4a;
            margin-bottom: 25px;
            text-align: center;
        }

        /* For responsiveness */
        @media (max-width: 768px) {
            .form-container {
                padding: 30px;
                width: 100%;
            }

            h2 {
                font-size: 1.8em;
            }

            .radio-group label {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>📊 Generate Student Report</h2>

        <div class="form-description">
            Choose the type of report you'd like to generate. You can filter students based on pending fees, room, or admission dates.
        </div>

        <form action="ReportServlet" method="post">

            <div class="radio-group">
                <label>
                    <input type="radio" name="reportType" value="pendingFees" required>
                    Students with Pending Fees
                </label>
            </div>

            <div class="radio-group">
                <label>
                    <input type="radio" name="reportType" value="roomStudents" required>
                    Students in a Particular Room
                </label>
                <input type="text" name="roomNumber" placeholder="Enter Room Number">
            </div>

            <div class="radio-group">
                <label>
                    <input type="radio" name="reportType" value="dateRange" required>
                    Students Admitted Between Dates
                </label>
                <label>From:</label>
                <input type="date" name="startDate">
                <label>To:</label>
                <input type="date" name="endDate">
            </div>

            <input type="submit" value="Generate Report">
        </form>

        <a href="index.jsp" class="back-link">⬅️ Back to Home</a>
    </div>

</body>
</html>
