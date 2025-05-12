<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Library Dashboard</title>
        <style>
            body {
                margin: 0;
                font-family: Arial, sans-serif;
                background-image: url('images/book.webp');
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                color: #fff;
            }

            .dashboard-container {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                gap: 20px;
                padding: 40px;
                margin: 60px auto;
                max-width: 1100px;
                border-radius: 10px;
                background-color: rgba(0, 0, 0, 0.6);
            }

            .dashboard-container h2 {
                text-align: center;
                color: #fff;
                margin-bottom: 30px;
                font-size: 1.8em;
            }

            .card-grid {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                gap: 20px;
            }

            .card {
                background: #f8f9fa;
                padding: 20px;
                border-radius: 10px;
                text-align: center;
                box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.1);
                transition: transform 0.3s ease, background-color 0.3s;
            }

            .card:hover {
                transform: translateY(-5px);
                background-color: #e9ecef;
            }

            .card h3 {
                margin-bottom: 10px;
                color: #007bff;
            }

            .card a {
                text-decoration: none;
                color: #007bff;
                font-weight: bold;
            }

            .card a:hover {
                text-decoration: underline;
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

            footer p {
                margin: 0;
            }

        </style>
    </head>
    <body>
        <header>
            <h1>Library Management System</h1>
        </header>

        <div class="dashboard-container">
            <h2>Welcome to Your Dashboard</h2>

            <div class="card-grid">
                <div class="card">
                    <h3>Search Books</h3>
                    <p><a href="searchBook.jsp">Find and request books</a></p>
                </div>

                <div class="card">
                    <h3>My Borrowed Books</h3>
                    <p><a href="myBooks.jsp">View borrowed book list</a></p>
                </div>

                <div class="card">
                    <h3>View Available Books</h3>
                    <p><a href="ViewBookServlet.do">View available books</a></p>
                </div>
                
                

                <div class="card">
                    <h3>Logout</h3>
                    <p><a href="index.html">Log out</a></p>
                </div>
            </div>
        </div>

        <footer>
            <p>&copy; 2025 Library Management System</p>
        </footer>
    </body>
</html>
