<%-- 
    Document   : addReturnedBook
    Created on : May 12, 2025, 2:07:18 AM
    Author     : Ronewa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Return books</title><style>
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
       
   .form-container {
            max-width: 500px;
            margin: 80px auto;
            color: #ccc;
            background-color: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.5);
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 25px;
            color: gold;
        }
    .form-group {
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 6px;
        font-weight: bold;
        color: #333;
    }

    input[type="text"],
    input[type="number"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #007bff;
        color: #fff;
        border: none;
        font-size: 16px;
        border-radius: 6px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    .message, .error {
        text-align: center;
        font-weight: bold;
        margin-top: 15px;
    }

    .message {
        color: green;
    }

    .error {
        color: red;
    }
</style>
        <div class="form-container">
    <h2>Add Returned Books</h2>
    <form action="AddReturnedBookServlet.do" method="post">
        <div class="form-group">
            <label for="id">ID</label>
            <input type="text" name="id" id="id" required />
        </div> 
        <div class="form-group">
            <label for="title">Book Title</label>
            <input type="text" name="title" id="title" required />
        </div>
        <div class="form-group">
            <label for="author">Author Name</label>
            <input type="text" name="author" id="author" required />
        </div>
        <div class="form-group">
            <label for="isbn">ISBN Number</label>
            <input type="text" name="isbn" id="isbn" required />
        </div>
       
        <input type="submit" value="Add Book" />
    </form>
    </body>
</html>
