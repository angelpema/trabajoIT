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
import pojos.Mesa;

/**
 *
 * @author angel_pe_ma
 */
public class MesaDAO {

    Session session = null;

    public List<Mesa> listarMesas() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Mesa> lista = session.createQuery("from Mesa").list();
        tx.commit();
        return lista;
    }

    public void crearMesa(Mesa m) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(m);
        tx.commit();
    }

    public void actualizarMesa(Mesa m) {
        Mesa mesa = consultarMesa(m.getId());
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        mesa.setUbicacion(m.getUbicacion());
        mesa.setCapacidad(m.getCapacidad());
        mesa.setEstado(m.getEstado());
        session.update(mesa);
        tx.commit();
    }

    public void eliminarMesa(int id) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Mesa mesa = (Mesa) session.get(Mesa.class, id);
        if (mesa != null) {
            session.delete(mesa);
        }
        tx.commit();
    }

    public Mesa consultarMesa(int id) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Mesa mesa = (Mesa) session.get(Mesa.class, id);
        tx.commit();
        return mesa;
    }

    public List<Mesa> listarMesasInterior() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Mesa> lista = session.createQuery("from Mesa WHERE ubicacion='Interior'").list();
        tx.commit();
        return lista;
    }

    public List<Mesa> listarMesasTerraza() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Mesa> lista = session.createQuery("from Mesa WHERE ubicacion='Terraza'").list();
        tx.commit();
        return lista;
    }
}
