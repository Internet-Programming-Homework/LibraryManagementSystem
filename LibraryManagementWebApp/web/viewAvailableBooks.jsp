

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Available Books</title>
    </head>
    <body>
        <h1>View Borrowed Books</h1>
        
        <form action="ViewBookServlet.do" method="GET">
            <table>
                  <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="View Borrowed Books"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
