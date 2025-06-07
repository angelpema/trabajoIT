/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojos.HibernateUtil;
import pojos.PlatoIngrediente;

/**
 *
 * @author angel_pe_ma
 */
public class PlatoIngredienteDAO {

    Session session = null;

    public List<PlatoIngrediente> listarPlatoIngredientes() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<PlatoIngrediente> lista = session.createQuery("from PlatoIngrediente p JOIN FETCH p.ingrediente JOIN FETCH p.plato").list();
        tx.commit();
        return lista;
    }

    public void crearPlatoIngrediente(PlatoIngrediente p) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(p);
        tx.commit();
    }

    public void actualizarPlatoIngrediente(PlatoIngrediente p) {
        PlatoIngrediente platoIngrediente = consultarPlatoIngrediente(p.getId());
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        platoIngrediente.setIngrediente(p.getIngrediente());
        platoIngrediente.setPlato(p.getPlato());
        platoIngrediente.setCantidad(p.getCantidad());
        session.update(platoIngrediente);
        tx.commit();
    }

    public void eliminarPlatoIngrediente(int id) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        PlatoIngrediente platoIngrediente = (PlatoIngrediente) session.get(PlatoIngrediente.class, id);
        if (platoIngrediente != null) {
            session.delete(platoIngrediente);
        }
        tx.commit();
    }

    public PlatoIngrediente consultarPlatoIngrediente(int id) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        PlatoIngrediente platoIngrediente = (PlatoIngrediente) session.get(PlatoIngrediente.class, id);
        tx.commit();
        return platoIngrediente;
    }
}
