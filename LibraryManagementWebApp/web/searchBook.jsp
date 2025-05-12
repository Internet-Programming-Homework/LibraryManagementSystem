

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search book</title>
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
       
    .search-container {
        max-width: 800px;
        margin: 50px auto;
        background-color: rgba(255, 255, 255, 0.95);
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 0px 12px rgba(0, 0, 0, 0.1);
    }

    .search-container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #343a40;
    }

    .search-form {
        display: flex;
        flex-wrap: wrap;
        gap: 10px;
        margin-bottom: 30px;
        justify-content: center;
    }

    .search-form input[type="text"] {
        flex: 1;
        min-width: 200px;
        padding: 10px;
        border-radius: 6px;
        border: 1px solid #ccc;
    }

    .search-form input[type="submit"] {
        padding: 10px 20px;
        border: none;
        background-color: #007bff;
        color: #fff;
        border-radius: 6px;
        cursor: pointer;
    }

    .search-form input[type="submit"]:hover {
        background-color: #0056b3;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        padding: 12px;
        border-bottom: 1px solid #ccc;
        text-align: left;
    }

    th {
        background-color: #f1f1f1;
    }

    .no-results {
        text-align: center;
        color: red;
        font-weight: bold;
        margin-top: 20px;
    }
</style>

<div class="search-container">
    <h2>Search Books</h2>

    <form class="search-form" action="SearchBookServlet.do" method="POST">
        <input type="text" name="title" placeholder="Search by title " required />
        <input type="submit" value="Search" />
    </form>

    </body>
</html>
