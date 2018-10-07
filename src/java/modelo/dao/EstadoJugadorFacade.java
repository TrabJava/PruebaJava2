/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import modelo.dto.EstadoJugador;

/**
 *
 * @author Berni
 */
@Stateless
public class EstadoJugadorFacade extends AbstractFacade<EstadoJugador> {

    @PersistenceContext(unitName = "TrabajoJava2PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public EstadoJugadorFacade() {
        super(EstadoJugador.class);
    }
    
}
