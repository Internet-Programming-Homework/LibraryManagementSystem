/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.entity;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Ronewa
 */
@Stateless
public class BorrowedBooksFacade extends AbstractFacade<BorrowedBooks> implements BorrowedBooksFacadeLocal {

    @PersistenceContext(unitName = "LibraryManagementEJBPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BorrowedBooksFacade() {
        super(BorrowedBooks.class);
    }
    
}
