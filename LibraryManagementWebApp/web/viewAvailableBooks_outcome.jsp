
<%@page import="za.ac.tut.entity.Book"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>View Available Books Outcome Page</title>

    <!-- Font Awesome CDN for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f9f9fc;
        }

        h1 {
            text-align: center;
            color: #2c3e50;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 12px 15px;
            border: 1px solid #ccc;
            text-align: left;
        }

        th {
            background-color: #34495e;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f4f6f8;
        }

        input[type="text"] {
            width: 100%;
            border: none;
            background: transparent;
            font-size: 14px;
            color: #333;
        }

        ul {
            margin-top: 30px;
            padding-left: 0;
            list-style-type: none;
        }

        ul li {
            margin-bottom: 12px;
        }

        ul a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border-radius: 6px;
            transition: background-color 0.3s, transform 0.2s;
            font-weight: 500;
            box-shadow: 0 2px 6px rgba(0, 123, 255, 0.2);
            text-decoration: none;
        }

        ul a:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }

        ul a i {
            margin-right: 8px;
        }
    </style>
</head>
<body>
    <h1>Available Books</h1>

    <%
        List<Book> books = (List<Book>)request.getAttribute("books");
    %>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>ISBN</th>
            </tr>
        </thead>
        <tbody>
            <%
                for (int i = 0; i < books.size(); i++) {
                    Book emp = books.get(i);
                    Long id = emp.getId();
                    String title = emp.getTitle();
                    String author = emp.getAuthor();
                    String isbn = emp.getIsbn();
            %>
            <tr>
                <td><input type="text" value="<%=id%>" readonly /></td>
                <td><input type="text" value="<%=title%>" readonly /></td>
                <td><input type="text" value="<%=author%>" readonly /></td>
                <td><input type="text" value="<%=isbn%>" readonly /></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>

    <ul>
        <li><a href="user_deshboard.jsp"><i class="fas fa-user-shield"></i>Go to User Dashboard</a></li>
        <li><a href="index.html"><i class="fas fa-home"></i>Return to Main Page</a></li>
    </ul>
</body>
</html>
