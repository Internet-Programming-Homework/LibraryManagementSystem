

<%@page import="za.ac.tut.entity.BorrowedBooks"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Borrowed Books</title>

    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f0f4f8;
        }

        h1 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 14px 18px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #34495e;
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9fbfc;
        }

        input[type="text"] {
            width: 100%;
            border: none;
            background: transparent;
            font-size: 15px;
            color: #333;
        }

        ul {
            margin-top: 40px;
            padding-left: 0;
            list-style: none;
            display: flex;
            gap: 20px;
            justify-content: center;
        }

        ul li a {
            display: inline-block;
            padding: 12px 20px;
            background-color: #007bff;
            color: white;
            border-radius: 6px;
            font-weight: 500;
            box-shadow: 0 2px 6px rgba(0, 123, 255, 0.2);
            text-decoration: none;
            transition: background-color 0.3s, transform 0.2s;
        }

        ul li a:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }

        ul li a i {
            margin-right: 8px;
        }
    </style>
</head>
<body>

    <h1>Borrowed Books</h1>

    <%
        List<BorrowedBooks> booksBorrowed = (List<BorrowedBooks>)request.getAttribute("booksBorrowed");
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
                for (int i = 0; i < booksBorrowed.size(); i++) {
                    BorrowedBooks emp = booksBorrowed.get(i);
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
        <li><a href="admin_desh_board.jsp"><i class="fas fa-user-shield"></i>Go to Admin Dashboard</a></li>
        <li><a href="index.html"><i class="fas fa-home"></i>Return to Main Page</a></li>
    </ul>

</body>
</html>
