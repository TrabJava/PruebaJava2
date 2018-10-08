/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import modelo.dto.SuperUsuario;

/**
 *
 * @author Berni
 */
@Stateless
public class SuperUsuarioFacade extends AbstractFacade<SuperUsuario> {

    @PersistenceContext(unitName = "TrabajoJava2PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public SuperUsuarioFacade() {
        super(SuperUsuario.class);
    }
    
    public boolean existeUsuario(String user){
        Query query = em.createQuery("SELECT u FROM super_usuario u WHERE u.user = :user");
        query.setParameter("user", user);
        return query.getResultList().size() > 0;
    }
    
}
