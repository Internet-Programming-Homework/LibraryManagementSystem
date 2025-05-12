
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entity.Book;
import za.ac.tut.entity.BookFacadeLocal;


/**
 *
 * @author LENOVO
 */
public class SearchBookServlet extends HttpServlet {

    @EJB
    private BookFacadeLocal bfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String title = request.getParameter("title");
        List<Book> book = bfl.getAllPerTitle(title);

        if (book == null || book.isEmpty()) {
            request.setAttribute("error", "No books found with the title: " + title);
        } else {
            request.setAttribute("book", book);
        }

        RequestDispatcher disp = request.getRequestDispatcher("SearchBookOutcome.jsp");
        disp.forward(request, response);
    }

}
