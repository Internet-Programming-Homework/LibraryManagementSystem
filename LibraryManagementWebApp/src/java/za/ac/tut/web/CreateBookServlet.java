/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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


/**
 *
 * @author TSHEGO
 */
public class CreateBookServlet extends HttpServlet {

  @EJB
    private BookFacadeLocal bfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String title = request.getParameter("title");
        String isbn = request.getParameter("isbn");
        String author = request.getParameter("author");
        
        Book b = createBook(id, title, isbn, author);
        bfl.create(b);
        request.setAttribute("b", b);
        
        RequestDispatcher disp = request.getRequestDispatcher("admin_desh_board.jsp");
        disp.forward(request, response);
        
    }

    private Book createBook(Long id, String title,String isbn,String author) {

        Book b = new Book();
        b.setId(id);
        b.setTitle(title);
        b.setAuthor(author);
        b.setIsbn(isbn);
        return b;

    }

}

