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
import pojos.Plato;

/**
 *
 * @author angel_pe_ma
 */
public class PlatoDAO {

    Session session = null;

    public List<Plato> listarPlatos() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Plato> lista = session.createQuery("FROM Plato p JOIN FETCH p.categoria").list();
        tx.commit();
        return lista;
    }

    public void crearPlato(Plato p) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        if (p.getDisponible() == null) {
            p.setDisponible(false);
        }
        session.save(p);
        tx.commit();
    }

    public void actualizarPlato(Plato p) {
        Plato plato = consultarPlato(p.getId());
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        plato.setNombre(p.getNombre());
        plato.setDescripcion(p.getDescripcion());
        plato.setPrecio(p.getPrecio());
        plato.setCategoria(p.getCategoria());
        if (p.getDisponible() == null) {
            plato.setDisponible(false);
        } else {
            plato.setDisponible(true);
        }
        session.update(plato);
        tx.commit();
    }

    public void eliminarPlato(int id) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Plato plato = (Plato) session.get(Plato.class, id);
        if (plato != null) {
            session.delete(plato);
        }
        tx.commit();
    }

    public Plato consultarPlato(int id) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Plato plato = (Plato) session.get(Plato.class, id);
        tx.commit();
        return plato;
    }

    public List<Plato> listarPlatoCategoria(int id) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Plato> lista = session.createQuery("FROM Plato p JOIN FETCH p.categoria c WHERE c.id = "+id).list();
        tx.commit();
        return lista;
    }
}
