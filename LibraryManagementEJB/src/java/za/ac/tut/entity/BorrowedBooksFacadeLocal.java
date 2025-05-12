/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.entity;

import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Ronewa
 */
@Local
public interface BorrowedBooksFacadeLocal {

    void create(BorrowedBooks borrowedBooks);

    void edit(BorrowedBooks borrowedBooks);

    void remove(BorrowedBooks borrowedBooks);

    BorrowedBooks find(Object id);

    List<BorrowedBooks> findAll();

    List<BorrowedBooks> findRange(int[] range);

    int count();
    
}
