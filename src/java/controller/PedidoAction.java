/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.CamareroDAO;
import dao.MesaDAO;
import dao.PedidoDAO;
import java.util.Date;
import java.util.List;
import pojos.Camarero;
import pojos.Mesa;
import pojos.Pedido;

/**
 *
 * @author angel_pe_ma
 */
public class PedidoAction extends ActionSupport {

    private List<Pedido> listaPedido;
    private List<Mesa> listaMesa;
    private List<Camarero> listaCamarero;

    private PedidoDAO pedidoDAO;
    private MesaDAO mesaDAO;
    private CamareroDAO camareroDAO;

    private Pedido pedido;

    private Integer id;
    private Camarero camarero;
    private Mesa mesa;
    private Date fechaHora;
    private String estado;

    public PedidoAction() {
        this.pedidoDAO = new PedidoDAO();
        this.mesaDAO = new MesaDAO();
        this.camareroDAO = new CamareroDAO();
    }

    public String execute() throws Exception {
        listaPedido = pedidoDAO.listarPedidos();
        return SUCCESS;
    }

    public String altaPedido() {
        listaMesa = mesaDAO.listarMesas();
        listaCamarero = camareroDAO.listarCamareros();
        if (camarero != null) {
            Pedido pedido = new Pedido(camarero, mesa);
            pedidoDAO.crearPedido(pedido);
            return SUCCESS;
        } else {
            return INPUT;
        }
    }

    public String eliminarPedido() {
        pedidoDAO.eliminarPedido(id);
        return SUCCESS;
    }

    public String modificarPedido() {
        listaMesa = mesaDAO.listarMesas();
        listaCamarero = camareroDAO.listarCamareros();
        pedido = pedidoDAO.consultarPedido(id);
        return SUCCESS;
    }

    public String modificarPedidoGuardar() {

        pedidoDAO.actualizarPedido(pedido);

        return SUCCESS;
    }

    public List<Pedido> getListaPedido() {
        return listaPedido;
    }

    public void setListaPedido(List<Pedido> listaPedido) {
        this.listaPedido = listaPedido;
    }

    public List<Mesa> getListaMesa() {
        return listaMesa;
    }

    public void setListaMesa(List<Mesa> listaMesa) {
        this.listaMesa = listaMesa;
    }

    public List<Camarero> getListaCamarero() {
        return listaCamarero;
    }

    public void setListaCamarero(List<Camarero> listaCamarero) {
        this.listaCamarero = listaCamarero;
    }

    public Pedido getPedido() {
        return pedido;
    }

    public void setPedido(Pedido pedido) {
        this.pedido = pedido;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Camarero getCamarero() {
        return camarero;
    }

    public void setCamarero(Camarero camarero) {
        this.camarero = camarero;
    }

    public Mesa getMesa() {
        return mesa;
    }

    public void setMesa(Mesa mesa) {
        this.mesa = mesa;
    }

    public Date getFechaHora() {
        return fechaHora;
    }

    public void setFechaHora(Date fechaHora) {
        this.fechaHora = fechaHora;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
}
