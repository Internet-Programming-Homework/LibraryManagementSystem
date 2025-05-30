
package za.ac.tut.web;


import java.io.IOException;
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


public class AddReturnedBookServlet extends HttpServlet {

    @EJB 
    BookFacadeLocal bfl;
    @EJB
    BorrowedBooksFacadeLocal bbfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String title = request.getParameter("title");
        String isbn = request.getParameter("isbn");
        String author = request.getParameter("author");
        
        Book b = createBook(id, title, isbn, author);
        bfl.create(b);
        
        BorrowedBooks bb = createBorrowed(id);
        bbfl.remove(bb);
        
        RequestDispatcher disp = request.getRequestDispatcher("addReturnedOutcome.jsp");
        disp.forward(request, response);
    }
    
   
    private Book createBook(Long id, String title, String isbn, String author) {
        Book b = new Book();
        b.setId(id);
        b.setAuthor(author);
        b.setIsbn(isbn);
        b.setTitle(title);
        return b;

    }

    private BorrowedBooks createBorrowed(Long id) {

        BorrowedBooks bb = bbfl.find(id);
        return bb;

    }

}
