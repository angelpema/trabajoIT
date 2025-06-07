/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojos.Alerta;
import pojos.HibernateUtil;

/**
 *
 * @author angel_pe_ma
 */
public class AlertaDAO {

    Session session = null;

    public List<Alerta> listarAlertas() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Alerta> lista = session.createQuery("from Alerta a JOIN FETCH a.ingrediente").list();
        tx.commit();
        return lista;
    }

    public void crearAlerta(Alerta a) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(a);
        tx.commit();
    }

    public void actualizarAlerta(Alerta a) {
        Alerta alerta = consultarAlerta(a.getId());
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        alerta.setIngrediente(a.getIngrediente());
        alerta.setMensaje(a.getMensaje());
        if(a.getResuelta()==null){
            alerta.setResuelta(false);
        }else{
            alerta.setResuelta(a.getResuelta());
        }
        session.update(alerta);
        tx.commit();
    }

    public void eliminarAlerta(int id) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Alerta alerta = (Alerta) session.get(Alerta.class, id);
        if (alerta != null) {
            session.delete(alerta);
        }
        tx.commit();
    }

    public Alerta consultarAlerta(int id) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Alerta alerta = (Alerta) session.get(Alerta.class, id);
        tx.commit();
        return alerta;
    }
}
