<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error - Student Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fbeaea;
            text-align: center;
            padding: 50px;
        }
        .error-box {
            display: inline-block;
            padding: 30px;
            border: 2px solid #f44336;
            background-color: #fff0f0;
            border-radius: 10px;
            max-width: 600px;
        }
        .error-box h2 {
            color: #f44336;
            margin-bottom: 10px;
        }
        .error-box p {
            font-size: 16px;
            color: #333;
            word-wrap: break-word;
        }
        .error-box a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #f44336;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .error-box a:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>
    <div class="error-box">
        <h2>Error Occurred</h2>
        <p>
            <%= request.getAttribute("errorMessage") != null 
                ? request.getAttribute("errorMessage") 
                : "An unexpected error has occurred. Please try again later." %>
        </p>
        <a href="dashboard.jsp">Back to Dashboard</a> |
        <a href="login.jsp">Logout</a>
    </div>
</body>
</html>