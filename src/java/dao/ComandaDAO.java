/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojos.Comanda;
import pojos.HibernateUtil;

/**
 *
 * @author angel_pe_ma
 */
public class ComandaDAO {
    Session session = null;
    
    public List<Comanda> listarComandas() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Comanda> lista = session.createQuery("from Comanda c JOIN FETCH c.pedido JOIN FETCH c.plato").list();
        tx.commit();
        return lista;
    }
    
    public void crearComanda(Comanda c) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(c);
        tx.commit();
    }

    public void actualizarComanda(Comanda c) {
        Comanda comanda = consultarComanda(c.getId());
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        comanda.setPedido(c.getPedido());
        comanda.setPlato(c.getPlato());
        comanda.setCantidad(c.getCantidad());
        comanda.setNotas(c.getNotas());
        session.update(comanda);
        tx.commit();
    }

    public void eliminarComanda(int id) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Comanda comanda = (Comanda) session.get(Comanda.class, id);
        if (comanda != null) {
            session.delete(comanda);
        }
        tx.commit();
    }

    public Comanda consultarComanda(int id) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Comanda comanda = (Comanda) session.get(Comanda.class, id);
        tx.commit();
        return comanda;
    }
}
