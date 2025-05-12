<%-- 
    Document   : SearchBookOutcome
    Created on : May 12, 2025, 3:02:28 PM
    Author     : TSHEGO
--%>
<%@page import="za.ac.tut.entity.Book"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Book Outcome</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            margin: 40px;
            color: #2c3e50;
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

        button {
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
        }

        button:hover {
            background-color: #218838;
            transform: translateY(-2px);
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
    <h1>The Book You Searched For</h1>
    
    <%
        List<Book> books = (List<Book>)request.getAttribute("book");
    %>


    <%
        if (books == null || books.isEmpty()) {
    %>
    <p>No books found for your search. Please try again.</p>
    <%
        } else {
    %>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>ISBN</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <%
                for (int i = 0; i < books.size(); i++) {
                    Book book = books.get(i);
                    Long id = book.getId();
                    String title = book.getTitle();
                    String author = book.getAuthor();
                    String isbn = book.getIsbn();
            %>
            <tr>
                <form action="BorrowBookServlet.do" method="POST">
                    <td><input type="text" name="id" value="<%= id %>" readonly /></td>
                    <td><input type="text" name="title" value="<%= title %>" readonly /></td>
                    <td><input type="text" name="author" value="<%= author %>" readonly /></td>
                    <td><input type="text" name="isbn" value="<%= isbn %>" readonly /></td>
                    <td><button type="submit">Borrow</button></td>
                </form>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
    <%
        }
    %>

    <ul>
        <li><a href="user_deshboard.jsp"><i class="fas fa-user-shield"></i>Go to User Dashboard</a></li>
        <li><a href="index.html"><i class="fas fa-home"></i>Return to Main Page</a></li>
    </ul>
</body>
</html>

