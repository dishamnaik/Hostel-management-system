<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.model.student" %>
<!DOCTYPE html>
<html>
<head>
  <title>Student List</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(135deg, #f0f8ff, #fef6ff);
      margin: 0;
      padding: 40px 20px;
      display: flex;
      flex-direction: column;
      align-items: center;

      color: #1a237e; /* Deep blue */
    }

    .header {
      background-color: #6a1b9a;
      color: white;
      padding: 20px 40px;
      border-radius: 12px;
      margin-bottom: 30px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.15);
    }

    h2 {
      margin: 0;
      font-size: 28px;
      color: #fff;
    }

    .back-button {
      margin-top: 25px;
      background-color: #6a1b9a;
      color: #fff;
      padding: 10px 24px;
      text-decoration: none;
      border-radius: 6px;
      font-weight: 600;
      transition: background 0.3s;
    }

    .back-button:hover {
      background-color: #8e24aa;
    }

    table {
      margin-top: 20px;
      border-collapse: collapse;
      width: 95%;
      max-width: 1000px;
      background: white;
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 5px 25px rgba(0, 0, 0, 0.08);
    }

    th, td {
      padding: 14px 18px;
      text-align: center;
      border-bottom: 1px solid #eee;
    }

    th {
      background-color: #ede7f6;
      color: #d32f2f; /* Bright red for headers */
      font-weight: bold;
    }

    td {
      color: #2e7d32; /* Dark green for student data */
    }

    tr:hover {
      background-color: #f9f1ff;
    }

    td[colspan] {
      color: #ff6f00; /* Orange italic message */
      font-style: italic;
    }
  </style>
</head>
<body>
  <div class="header">
    <h2>🎓 Hostel Students List</h2>
  </div>

  <table>
    <tr>
      <th>Student ID</th>
      <th>Name</th>
      <th>Room Number</th>
      <th>Admission Date</th>
      <th>Fees Paid</th>
      <th>Pending Fees</th>
    </tr>

    <%
      List<student> students = (List<student>) request.getAttribute("studentsList");
      if (students != null && !students.isEmpty()) {
        for (student s : students) {
    %>
    <tr>
      <td><%= s.getId() %></td>
      <td><%= s.getName() %></td>
      <td><%= s.getRoomNumber() %></td>
      <td><%= s.getAdmissionDate() %></td>
      <td>₹ <%= s.getFeesPaid() %></td>
      <td>₹ <%= s.getPendingFees() %></td>
    </tr>
    <%
        }
      } else {
    %>
    <tr>
      <td colspan="6">No students found.</td>
    </tr>
    <%
      }
    %>
  </table>

  <a class="back-button" href="index.jsp">⬅ Back to Home</a>
</body>
</html>
