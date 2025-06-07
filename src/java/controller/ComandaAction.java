/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.ComandaDAO;
import dao.PedidoDAO;
import dao.PlatoDAO;
import java.util.List;
import pojos.Comanda;
import pojos.Pedido;
import pojos.Plato;

/**
 *
 * @author angel_pe_ma
 */
public class ComandaAction extends ActionSupport {

    private List<Comanda> listaComanda;
    private List<Pedido> listaPedido;
    private List<Plato> listaPlato;

    private ComandaDAO comandaDAO;
    private PedidoDAO pedidoDAO;
    private PlatoDAO platoDAO;

    private Comanda comanda;

     private Integer id;
     private Pedido pedido;
     private Plato plato;
     private int cantidad;
     private String notas;

    public ComandaAction() {
        this.comandaDAO = new ComandaDAO();
        this.pedidoDAO = new PedidoDAO();
        this.platoDAO = new PlatoDAO();
    }

    public String execute() throws Exception {
        listaComanda = comandaDAO.listarComandas();
        return SUCCESS;
    }

    public String altaComanda() {
        listaPedido = pedidoDAO.listarPedidos();
        listaPlato = platoDAO.listarPlatos();
        if (pedido != null) {
            Comanda comanda = new Comanda(pedido, plato, cantidad, notas);
            comandaDAO.crearComanda(comanda);
            return SUCCESS;
        } else {
            return INPUT;
        }
    }

    public String eliminarComanda() {
        comandaDAO.eliminarComanda(id);
        return SUCCESS;
    }

    public String modificarComanda() {
        listaPedido = pedidoDAO.listarPedidos();
        listaPlato = platoDAO.listarPlatos();
        comanda = comandaDAO.consultarComanda(id);
        return SUCCESS;
    }

    public String modificarComandaGuardar() {

        comandaDAO.actualizarComanda(comanda);

        return SUCCESS;
    }

    public List<Comanda> getListaComanda() {
        return listaComanda;
    }

    public void setListaComanda(List<Comanda> listaComanda) {
        this.listaComanda = listaComanda;
    }

    public List<Pedido> getListaPedido() {
        return listaPedido;
    }

    public void setListaPedido(List<Pedido> listaPedido) {
        this.listaPedido = listaPedido;
    }

    public List<Plato> getListaPlato() {
        return listaPlato;
    }

    public void setListaPlato(List<Plato> listaPlato) {
        this.listaPlato = listaPlato;
    }

    public Comanda getComanda() {
        return comanda;
    }

    public void setComanda(Comanda comanda) {
        this.comanda = comanda;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Pedido getPedido() {
        return pedido;
    }

    public void setPedido(Pedido pedido) {
        this.pedido = pedido;
    }

    public Plato getPlato() {
        return plato;
    }

    public void setPlato(Plato plato) {
        this.plato = plato;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getNotas() {
        return notas;
    }

    public void setNotas(String notas) {
        this.notas = notas;
    }
    
    
}
