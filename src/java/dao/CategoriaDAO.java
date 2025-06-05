/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojos.Categoria;
import pojos.HibernateUtil;

/**
 *
 * @author angel_pe_ma
 */
public class CategoriaDAO {
    Session session = null;

    public List<Categoria> listarCategorias() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Categoria> lista = session.createQuery("from Categoria").list();
        tx.commit();
        return lista;
    }
    
    public void crearCategoria(Categoria c) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(c);
        tx.commit();
    }

    public void actualizarCategoria(Categoria c) {
        Categoria categoria = consultarCamarero(c.getId());
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        categoria.setNombre(c.getNombre());
        categoria.setId(c.getId());
        session.update(categoria);
        tx.commit();
    }

    public void eliminarCategoria(int id) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Categoria categoria = (Categoria) session.get(Categoria.class, id);
        if (categoria != null) {
            session.delete(categoria);
        }
        tx.commit();
    }

    public Categoria consultarCamarero(int id) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Categoria categoria = (Categoria) session.get(Categoria.class, id);
        tx.commit();
        return categoria;
    }
}
