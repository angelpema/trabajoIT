/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import pojos.Camarero;
import pojos.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author antoniovazqueztorres
 */
public class CamareroDAO {
    Session session = null;

    public List<Camarero> listarCamareros() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Camarero> lista = session.createQuery("from Camarero").list();
        tx.commit();
        return lista;
    }
    
    public void crearCamarero(Camarero c) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(c);
        tx.commit();
    }

    public void actualizarCamarero(Camarero c) {
        Camarero camarero = consultarCamarero(c.getId());
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        camarero.setNombre(c.getNombre());
        camarero.setApellidos(c.getApellidos());
        camarero.setTurno(c.getTurno());
        session.update(camarero);
        tx.commit();
    }

    public void eliminarCamarero(int idCamarero) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Camarero camarero = (Camarero) session.get(Camarero.class, idCamarero);
        if (camarero != null) {
            session.delete(camarero);
        }
        tx.commit();
    }

    public Camarero consultarCamarero(int idCamarero) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Camarero camarero = (Camarero) session.get(Camarero.class, idCamarero);
        tx.commit();
        return camarero;
    }
}
