<%-- 
    Document   : admin_desh_board
    Created on : May 12, 2025, 2:54:50 PM
    Author     : TSHEGO
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin dashboard</title>
  <style>
      body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-image: url('images/bookli.jpg');
            
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #fff;
        }
    .admin-dashboard {
          display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            padding: 40px;
            
            margin: 50px auto;
            max-width: 1100px;
            border-radius: 10px;
         
         background-color: rgba(0, 0, 0, 0.6); 
        
        }

    .dashboard-container h2 {
        text-align: center;
        color: #343a40;
        margin-bottom: 30px;
    }

    .admin-options {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
        gap: 20px;
    }

    .option-card {
        background-color: #f8f9fa;
        padding: 20px;
        border-radius: 10px;
        text-align: center;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.08);
        transition: 0.3s;
    }

    .option-card:hover {
        background-color: #e9ecef;
        transform: translateY(-5px);
    }

    .option-card h3 {
        color: #007bff;
        margin-bottom: 10px;
    }

    .option-card a {
        text-decoration: none;
        color: #007bff;
        font-weight: bold;
    }

    .option-card a:hover {
        text-decoration: underline;
    }
     header, footer {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 5px;
            text-align: center;
            
            position: fixed;
            width: 100%;
            color: #fff;
        }

        header {
            top: 0;
            font-size: 0.7em;
        }

        footer {
            bottom: 0;
            font-size: 1.2em;
        }
</style>
    </head>
    <body>
 <header> 
        <h1>Admin dashboard</h1>
        </header>
<div class="admin-dashboard">
  

    <div class="admin-options">
        <div class="option-card">
            <h3>Manage Books</h3>
            <p><a href="addBook.jsp">Add books</a></p>
        </div>

        <div class="option-card">
            <h3>Available Books</h3>
            <p><a href="Admin_view_books.do">View all available books</a></p>
        </div>

        <div class="option-card">
            <h3>Borrowed Books</h3>
            <p><a href="ViewBorrowedBooks.do">See all borrowed records</a></p>
        </div>
        
        <div class="option-card">
                    <h3>Add Returned Book</h3>
                    <p><a href="addReturnedBook.jsp">Add</a></p>
        </div>

        <div class="option-card">
            <h3>Logout</h3>
            <p><a href="index.html">Sign out </a></p>
        </div>
    </div>
</div>
          <footer >
    <p>&copy; 2025 Library Management System</p>
</footer>
    </body>
</html>

