<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hostel Management System</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: #f0f4f8; /* light grayish-blue background */
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background: #ffffff;
            width: 100%;
            max-width: 900px;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            font-size: 2.5rem;
            color: #00796b;
            margin-bottom: 40px;
            font-weight: 600;
        }

        ul {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            list-style: none;
            padding: 0;
        }

        li {
            display: flex;
            justify-content: center;
        }

        a {
            text-decoration: none;
            background-color: #00796b;
            color: white;
            padding: 15px 30px;
            border-radius: 50px;
            font-size: 1.2rem;
            font-weight: 600;
            text-align: center;
            transition: all 0.3s ease;
            width: 100%;
            max-width: 250px;
            text-transform: uppercase;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        a:hover {
            background-color: #004d40;
            transform: scale(1.05);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        a:active {
            transform: scale(1);
            background-color: #00332b;
        }

        /* For responsive design */
        @media screen and (max-width: 768px) {
            ul {
                grid-template-columns: 1fr;
            }

            h1 {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Hostel Management Portal</h1>
        
        <ul>
            <li><a href="studentadd.jsp">Register New Student</a></li>
            <li><a href="DisplayStudentsServlet">Browse Student Records</a></li>
            <li><a href="studentupdate.jsp">Modify Student Details</a></li>
            <li><a href="studentdelete.jsp">Remove Student</a></li>
            <li><a href="ReportCriteriaServlet">Create Custom Reports</a></li>
        </ul>
    </div>

</body>
</html>
