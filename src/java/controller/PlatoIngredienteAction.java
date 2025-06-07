/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.IngredienteDAO;
import dao.PlatoDAO;
import dao.PlatoIngredienteDAO;
import java.math.BigDecimal;
import java.util.List;
import pojos.Ingrediente;
import pojos.Plato;
import pojos.PlatoIngrediente;

/**
 *
 * @author angel_pe_ma
 */
public class PlatoIngredienteAction extends ActionSupport {

    private List<PlatoIngrediente> listaPlatoIngrediente;
    private List<Ingrediente> listaIngrediente;
    private List<Plato> listaPlato;

    private PlatoIngredienteDAO platoIngredienteDAO;
    private IngredienteDAO ingredienteDAO;
    private PlatoDAO platoDAO;

    private PlatoIngrediente platoIngrediente;

    private Integer id;
    private Ingrediente ingrediente;
    private Plato plato;
    private BigDecimal cantidad;

    public PlatoIngredienteAction() {
        this.platoIngredienteDAO = new PlatoIngredienteDAO();
        this.ingredienteDAO = new IngredienteDAO();
        this.platoDAO = new PlatoDAO();
    }

    public String execute() throws Exception {
        listaPlatoIngrediente = platoIngredienteDAO.listarPlatoIngredientes();
        return SUCCESS;
    }

    public String altaPlatoIngrediente() {
        listaIngrediente = ingredienteDAO.listarIngredientes();
        listaPlato = platoDAO.listarPlatos();
        if (plato != null) {
            PlatoIngrediente platoIngrediente = new PlatoIngrediente(ingrediente, plato, cantidad);
            platoIngredienteDAO.crearPlatoIngrediente(platoIngrediente);
            return SUCCESS;
        } else {
            return INPUT;
        }
    }

    public String eliminarPlatoIngrediente() {
        platoIngredienteDAO.eliminarPlatoIngrediente(id);
        return SUCCESS;
    }

    public String modificarPlatoIngrediente() {
        listaIngrediente = ingredienteDAO.listarIngredientes();
        listaPlato = platoDAO.listarPlatos();
        platoIngrediente = platoIngredienteDAO.consultarPlatoIngrediente(id);
        return SUCCESS;
    }

    public String modificarPlatoIngredienteGuardar() {

        platoIngredienteDAO.actualizarPlatoIngrediente(platoIngrediente);

        return SUCCESS;
    }

    public List<PlatoIngrediente> getListaPlatoIngrediente() {
        return listaPlatoIngrediente;
    }

    public void setListaPlatoIngrediente(List<PlatoIngrediente> listaPlatoIngrediente) {
        this.listaPlatoIngrediente = listaPlatoIngrediente;
    }

    public List<Ingrediente> getListaIngrediente() {
        return listaIngrediente;
    }

    public void setListaIngrediente(List<Ingrediente> listaIngrediente) {
        this.listaIngrediente = listaIngrediente;
    }

    public List<Plato> getListaPlato() {
        return listaPlato;
    }

    public void setListaPlato(List<Plato> listaPlato) {
        this.listaPlato = listaPlato;
    }

    public PlatoIngrediente getPlatoIngrediente() {
        return platoIngrediente;
    }

    public void setPlatoIngrediente(PlatoIngrediente platoIngrediente) {
        this.platoIngrediente = platoIngrediente;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Ingrediente getIngrediente() {
        return ingrediente;
    }

    public void setIngrediente(Ingrediente ingrediente) {
        this.ingrediente = ingrediente;
    }

    public Plato getPlato() {
        return plato;
    }

    public void setPlato(Plato plato) {
        this.plato = plato;
    }

    public BigDecimal getCantidad() {
        return cantidad;
    }

    public void setCantidad(BigDecimal cantidad) {
        this.cantidad = cantidad;
    }
    
    
}
