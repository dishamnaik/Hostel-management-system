<%@ page import="java.util.*, com.model.student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hostel Student Report</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #e0f7fa, #b2ebf2);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding: 20px;
            flex-direction: column;
        }

        h2 {
            color: #00695c;
            font-size: 2.4em;
            text-align: center;
            margin-bottom: 30px;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
        }

        .table-container {
            width: 100%;
            max-width: 900px;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            padding: 20px;
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            text-align: center;
        }

        th, td {
            padding: 15px 20px;
            font-size: 1.1rem;
            border-bottom: 1px solid #b2dfdb;
        }

        th {
            background-color: #004d40; /* Dark Green */
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #e0f2f1; /* Light Green */
        }

        tr:hover {
            background-color: #b2dfdb; /* Hover effect on rows */
        }

        .no-data {
            font-size: 1.2rem;
            color: #00796b;
            text-align: center;
            margin-top: 50px;
            font-weight: 600;
        }

        .back-button {
            display: inline-block;
            text-align: center;
            margin-top: 30px;
            background-color: #004d40;
            color: white;
            text-decoration: none;
            padding: 12px 24px;
            font-size: 1.1rem;
            border-radius: 25px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .back-button:hover {
            background-color: #00796b;
            transform: scale(1.05);
        }

        /* Responsiveness */
        @media (max-width: 768px) {
            h2 {
                font-size: 2em;
            }

            table {
                font-size: 1rem;
            }

            .table-container {
                padding: 10px;
            }
        }
    </style>
</head>
<body>

    <h2>📋 Hostel Student Report</h2>

    <div class="table-container">
        <%
            List<student> students = (List<student>) request.getAttribute("reportData");

            if (students != null && !students.isEmpty()) {
        %>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Room No</th>
                        <th>Admission Date</th>
                        <th>Fees Paid</th>
                        <th>Pending Fees</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (student s : students) {
                    %>
                    <tr>
                        <td><%= s.getId() %></td>
                        <td><%= s.getName() %></td>
                        <td><%= s.getRoomNumber() %></td>
                        <td><%= s.getAdmissionDate() %></td>
                        <td><%= s.getFeesPaid() %></td>
                        <td><%= s.getPendingFees() %></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        <%
            } else {
        %>
            <p class="no-data">🚫 No records found for the selected criteria.</p>
        <%
            }
        %>
    </div>

    <a href="report_form.jsp" class="back-button">← Back to Report Form</a>

</body>
</html>
