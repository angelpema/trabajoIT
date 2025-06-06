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
import pojos.Pedido;

/**
 *
 * @author angel_pe_ma
 */
public class PedidoDAO {

    Session session = null;

    public List<Pedido> listarPedidos() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Pedido> lista = session.createQuery("FROM Pedido p JOIN FETCH p.mesa JOIN FETCH p.camarero").list();
        tx.commit();
        return lista;
    }

    public void crearPedido(Pedido p) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(p);
        tx.commit();
    }

    public void actualizarPedido(Pedido p) {
        Pedido pedido = consultarPedido(p.getId());
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        pedido.setEstado(p.getEstado());
        session.update(pedido);
        tx.commit();
    }

    public void eliminarPedido(int id) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Pedido pedido = (Pedido) session.get(Pedido.class, id);
        if (pedido != null) {
            session.delete(pedido);
        }
        tx.commit();
    }

    public Pedido consultarPedido(int id) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Pedido pedido = (Pedido) session.get(Pedido.class, id);
        tx.commit();
        return pedido;
    }
}
