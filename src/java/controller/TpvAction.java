/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.CategoriaDAO;
import dao.ComandaDAO;
import dao.MesaDAO;
import dao.PedidoDAO;
import dao.PlatoDAO;
import java.math.BigDecimal;
import java.util.List;
import pojos.Categoria;
import pojos.Comanda;
import pojos.Mesa;
import pojos.Pedido;
import pojos.Plato;

/**
 *
 * @author angel_pe_ma
 */
public class TpvAction extends ActionSupport {

    private List<Mesa> listaMesaInterior;
    private List<Mesa> listaMesaTerraza;
    private List<Categoria> listaCategoria;
    private List<Plato> listaPlatos;
    private List<Comanda> listaPlatosPedido;

    private MesaDAO mesaDAO;
    private CategoriaDAO categoriaDAO;
    private PlatoDAO platoDAO;
    private PedidoDAO pedidoDAO;
    private ComandaDAO comandaDAO;

    private Mesa mesa;
    private Categoria categoria;
    private Plato plato;
    private Pedido pedido;

    private int platoID;
    private int mesaID;
    private int comandaID;
    private BigDecimal precio;

    public TpvAction() {
        this.mesaDAO = new MesaDAO();
        this.categoriaDAO = new CategoriaDAO();
        this.platoDAO = new PlatoDAO();
        this.pedidoDAO = new PedidoDAO();
        this.comandaDAO = new ComandaDAO();
    }

    public String execute() throws Exception {
        listaMesaInterior = mesaDAO.listarMesasInterior();
        listaMesaTerraza = mesaDAO.listarMesasTerraza();
        return SUCCESS;
    }

    public String tpvMesaSeleccionada() {
        listaCategoria = categoriaDAO.listarCategorias();
        mesa = mesaDAO.consultarMesa(mesaID);

        listaPlatosPedido = comandaDAO.cargarPlatosPedidos(mesa);

        return SUCCESS;
    }

    public String tpvCategoriaSeleccionada() {
        listaPlatos = platoDAO.listarPlatoCategoria(categoria.getId());
        mesa = mesaDAO.consultarMesa(mesa.getId());

        listaPlatosPedido = comandaDAO.cargarPlatosPedidos(mesa);

        return SUCCESS;
    }

    public String agregarAlPedido() {
        listaPlatos = platoDAO.listarPlatoCategoria(categoria.getId());
        pedido = pedidoDAO.buscarMesaPedido(mesa.getId());
        plato = platoDAO.consultarPlato(platoID);
        Comanda c = new Comanda(pedido, plato, 1, "");
        comandaDAO.crearComanda(c);
        mesa = mesaDAO.consultarMesa(mesa.getId());

        listaPlatosPedido = comandaDAO.cargarPlatosPedidos(mesa);

        return SUCCESS;
    }

    public String eliminarDelPedidoPlato() {
        listaPlatos = platoDAO.listarPlatoCategoria(categoria.getId());
        pedido = pedidoDAO.buscarMesaPedido(mesa.getId());
        mesa = mesaDAO.consultarMesa(mesa.getId());
        comandaDAO.eliminarComanda(comandaID);

        listaPlatosPedido = comandaDAO.cargarPlatosPedidos(mesa);

        return SUCCESS;
    }

    public String eliminarDelPedido() {
        pedido = pedidoDAO.buscarMesaPedido(mesaID);
        mesa = mesaDAO.consultarMesa(mesaID);
        comandaDAO.eliminarComanda(comandaID);
        listaCategoria = categoriaDAO.listarCategorias();

        listaPlatosPedido = comandaDAO.cargarPlatosPedidos(mesa);

        return SUCCESS;
    }

    public String confirmarPedido() {
        precio = new BigDecimal("0");
        mesa = mesaDAO.consultarMesa(mesaID);
        listaPlatosPedido = comandaDAO.cargarPlatosPedidos(mesa);
        for (Comanda c : listaPlatosPedido) {
            precio = precio.add(c.getPlato().getPrecio().multiply(BigDecimal.valueOf(c.getCantidad())));
            comandaDAO.eliminarComanda(c.getId());
        }
        pedido = pedidoDAO.buscarMesaPedido(mesa.getId());
        pedidoDAO.eliminarPedido(pedido.getId());

        return SUCCESS;
    }

    public BigDecimal getPrecio() {
        return precio;
    }

    public void setPrecio(BigDecimal precio) {
        this.precio = precio;
    }

    public int getComandaID() {
        return comandaID;
    }

    public void setComandaID(int comandaID) {
        this.comandaID = comandaID;
    }

    public List<Comanda> getListaPlatosPedido() {
        return listaPlatosPedido;
    }

    public void setListaPlatosPedido(List<Comanda> listaPlatosPedido) {
        this.listaPlatosPedido = listaPlatosPedido;
    }

    public int getMesaID() {
        return mesaID;
    }

    public void setMesaID(int mesaID) {
        this.mesaID = mesaID;
    }

    public int getPlatoID() {
        return platoID;
    }

    public void setPlatoID(int platoID) {
        this.platoID = platoID;
    }

    public Plato getPlato() {
        return plato;
    }

    public void setPlato(Plato plato) {
        this.plato = plato;
    }

    public Pedido getPedido() {
        return pedido;
    }

    public void setPedido(Pedido pedido) {
        this.pedido = pedido;
    }

    public List<Plato> getListaPlatos() {
        return listaPlatos;
    }

    public void setListaPlatos(List<Plato> listaPlatos) {
        this.listaPlatos = listaPlatos;
    }

    public List<Categoria> getListaCategoria() {
        return listaCategoria;
    }

    public void setListaCategoria(List<Categoria> listaCategoria) {
        this.listaCategoria = listaCategoria;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public List<Mesa> getListaMesaInterior() {
        return listaMesaInterior;
    }

    public void setListaMesaInterior(List<Mesa> listaMesaInterior) {
        this.listaMesaInterior = listaMesaInterior;
    }

    public List<Mesa> getListaMesaTerraza() {
        return listaMesaTerraza;
    }

    public void setListaMesaTerraza(List<Mesa> listaMesaTerraza) {
        this.listaMesaTerraza = listaMesaTerraza;
    }

    public Mesa getMesa() {
        return mesa;
    }

    public void setMesa(Mesa mesa) {
        this.mesa = mesa;
    }
}
