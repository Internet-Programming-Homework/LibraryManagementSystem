/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;
import java.io.IOException;
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
 * @author TSHEGO
 */
public class ViewBookServlet extends HttpServlet {

     @EJB
    private BookFacadeLocal bfl;
 @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       List<Book> books = bfl.findAll();
       request.setAttribute("books", books);
       
       RequestDispatcher disp = request.getRequestDispatcher("viewAvailableBooks_outcome.jsp");
        disp.forward(request, response);
    }

}
