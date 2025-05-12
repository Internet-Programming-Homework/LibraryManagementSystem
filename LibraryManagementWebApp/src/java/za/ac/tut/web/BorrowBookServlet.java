
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entity.Book;
import za.ac.tut.entity.BookFacadeLocal;
import za.ac.tut.entity.BorrowedBooks;
import za.ac.tut.entity.BorrowedBooksFacadeLocal;


public class BorrowBookServlet extends HttpServlet {

     @EJB
    private BookFacadeLocal bfl;
    @EJB
    private BorrowedBooksFacadeLocal bbfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String isbn = request.getParameter("isbn");
        
        BorrowedBooks borrowed = createBorrowed(id, title, author, isbn);
        bbfl.create(borrowed);
        
        Book bb = createBook(id, title, author, isbn);
        bfl.remove(bb);
        
        
        
        RequestDispatcher disp = request.getRequestDispatcher("boorow_outcome.jsp");
        disp.forward(request, response);
    }

    private Book createBook(Long id, String title,String author,String isbn) {

        Book bb = bfl.find(id);
        return bb;
        
    }

    private BorrowedBooks createBorrowed(Long id, String title,String author,String isbn ) {
        BorrowedBooks bb = new BorrowedBooks();
        bb.setId(id);
        bb.setTitle(title);
        bb.setAuthor(author);
        bb.setIsbn(isbn);
        return bb;
    }

}
