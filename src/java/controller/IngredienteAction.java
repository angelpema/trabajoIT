/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.IngredienteDAO;
import java.math.BigDecimal;
import java.util.List;
import pojos.Ingrediente;

/**
 *
 * @author angel_pe_ma
 */
public class IngredienteAction extends ActionSupport {

    private List<Ingrediente> listaIngrediente;
    private IngredienteDAO ingredienteDAO;

    private Ingrediente ingrediente;

    private int id;
    private String nombre;
    private BigDecimal stock;
    private String unidad;
    private BigDecimal umbralAlerta;

    public IngredienteAction() {
        this.ingredienteDAO = new IngredienteDAO();
    }

    public String execute() throws Exception {
        listaIngrediente = ingredienteDAO.listarIngredientes();
        return SUCCESS;
    }

    public String altaIngrediente() {
        if (nombre != null) {
            Ingrediente ingrediente = new Ingrediente(nombre, stock, unidad, umbralAlerta);
            ingredienteDAO.crearIngrediente(ingrediente);
            return SUCCESS;
        } else {
            return INPUT;
        }
    }

    public String eliminarIngrediente() {
        ingredienteDAO.eliminarIngrediente(id);
        return SUCCESS;
    }

    public String modificarIngrediente() {
        ingrediente = ingredienteDAO.consultarIngrediente(id);
        return SUCCESS;

    }

    public String modificarIngredienteGuardar() {

        ingredienteDAO.actualizarIngrediente(ingrediente);

        return SUCCESS;
    }

    public List<Ingrediente> getListaIngrediente() {
        return listaIngrediente;
    }

    public void setListaIngrediente(List<Ingrediente> listaIngrediente) {
        this.listaIngrediente = listaIngrediente;
    }

    public Ingrediente getIngrediente() {
        return ingrediente;
    }

    public void setIngrediente(Ingrediente ingrediente) {
        this.ingrediente = ingrediente;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public BigDecimal getStock() {
        return stock;
    }

    public void setStock(BigDecimal stock) {
        this.stock = stock;
    }

    public String getUnidad() {
        return unidad;
    }

    public void setUnidad(String unidad) {
        this.unidad = unidad;
    }

    public BigDecimal getUmbralAlerta() {
        return umbralAlerta;
    }

    public void setUmbralAlerta(BigDecimal umbralAlerta) {
        this.umbralAlerta = umbralAlerta;
    }
    
    

}
