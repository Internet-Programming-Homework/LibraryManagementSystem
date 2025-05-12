
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrow Books</title>
        <style>
            body {
                margin: 0;
                font-family: Arial, sans-serif;
                background-color: #f4f6f8;
                color: #333;
            }

            header, footer {
                background-color: rgba(0, 0, 0, 0.7);
                padding: 15px;
                text-align: center;
                font-size: 1.2em;
                position: fixed;
                width: 100%;
                color: #fff;
            }

            header {
                top: 0;
                font-size: 0.9em;
            }

            footer {
                bottom: 0;
                font-size: 0.8em;
            }

            .book-list {
                margin-top: 100px;
                padding: 20px;
                text-align: center;
                background-color: white;
                border-radius: 8px;
                box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.1);
                margin-left: auto;
                margin-right: auto;
                width: 80%;
            }

            .book-list table {
                width: 100%;
                border-collapse: collapse;
            }

            .book-list th, .book-list td {
                padding: 12px;
                border: 1px solid #ccc;
                text-align: center;
            }

            .book-list th {
                background-color: #007bff;
                color: white;
            }

            .book-list tr:nth-child(even) {
                background-color: #f9f9f9;
            }

            .book-list button {
                background-color: #28a745;
                color: white;
                border: none;
                padding: 10px 20px;
                cursor: pointer;
                border-radius: 6px;
                transition: background-color 0.3s;
            }

            .book-list button:hover {
                background-color: #218838;
            }
        </style>
    </head>
    <body>

        <header>
            <h1>Library Management System</h1>
        </header>

        <div class="book-list">
            <h2>Available Books</h2>
            <!-- Check if books are available -->
            <c:if test="${not empty books}">
                <table>
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Author</th>
                            <th>ISBN</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Loop through the books list -->
                        <c:forEach var="book" items="${books}">
                            <tr>
                                <td>${book.title}</td>
                                <td>${book.author}</td>
                                <td>${book.isbn}</td>
                                <td>
                                    <form action="BorrowBookServlet.do" method="POST">
                                        <input type="hidden" name="id" value="${book.id}" />
                                        <input type="hidden" name="title" value="${book.title}" />
                                        <input type="hidden" name="author" value="${book.author}" />
                                        <input type="hidden" name="isbn" value="${book.isbn}" />
                                        <button type="submit">Borrow</button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>

            <c:if test="${empty books}">
                <p>No books are available to borrow at the moment.</p>
            </c:if>
        </div>

        <footer>
            <p>&copy; 2025 Library Management System</p>
        </footer>

    </body>
</html>

