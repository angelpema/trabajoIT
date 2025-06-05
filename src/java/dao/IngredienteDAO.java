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
import pojos.Ingrediente;

/**
 *
 * @author angel_pe_ma
 */
public class IngredienteDAO {
    
    Session session = null;
    
    public List<Ingrediente> listarIngredientes() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Ingrediente> lista = session.createQuery("from Ingrediente").list();
        tx.commit();
        return lista;
    }
    
    public void crearIngrediente(Ingrediente i) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(i);
        tx.commit();
    }

    public void actualizarIngrediente(Ingrediente i) {
        Ingrediente ingrediente = consultarIngrediente(i.getId());
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        ingrediente.setNombre(i.getNombre());
        ingrediente.setStock(i.getStock());
        ingrediente.setUnidad(i.getUnidad());
        ingrediente.setUmbralAlerta(i.getUmbralAlerta());
        session.update(ingrediente);
        tx.commit();
    }

    public void eliminarIngrediente(int id) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Ingrediente ingrediente = (Ingrediente) session.get(Ingrediente.class, id);
        if (ingrediente != null) {
            session.delete(ingrediente);
        }
        tx.commit();
    }

    public Ingrediente consultarIngrediente(int id) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Ingrediente ingrediente = (Ingrediente) session.get(Ingrediente.class, id);
        tx.commit();
        return ingrediente;
    }
}
