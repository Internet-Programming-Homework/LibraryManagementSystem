<%-- 
    Document   : addReturnedOutcome
    Created on : May 12, 2025, 2:08:31 AM
    Author     : Ronewa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Return Book Outcome</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            margin: 40px;
            color: #2c3e50;
        }

        .container {
            max-width: 600px;
            margin: auto;
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            text-align: center;
        }

        h1 {
            color: #28a745;
        }

        p {
            font-size: 18px;
            margin-top: 20px;
        }

        .icon {
            font-size: 60px;
            color: #28a745;
            margin-bottom: 20px;
        }

        .actions {
            margin-top: 30px;
        }

        .actions a {
            display: inline-block;
            margin: 10px;
            padding: 12px 24px;
            background-color: #007bff;
            color: white;
            border-radius: 6px;
            text-decoration: none;
            font-weight: 500;
            transition: background-color 0.3s, transform 0.2s;
        }

        .actions a:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }

        .actions a i {
            margin-right: 8px;
        }
    </style>
    </head>
    <body>
        
        <div class="container">
        <div class="icon">
            <i class="fas fa-check-circle"></i>
        </div>
        <h1>Book Returned Successfully!</h1>

        <div class="actions">
            <a href="admin_desh_board.jsp"><i class="fas fa-user-shield"></i>Admin Dashboard</a>
            <a href="index.html"><i class="fas fa-home"></i>Home</a>
            <a href="addReturnedBook.jsp"><i class="fas fa-search"></i>Return another book</a>
        </div>
    </div>
    </body>
</html>
