/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.CategoriaDAO;
import dao.PlatoDAO;
import java.math.BigDecimal;
import java.util.List;
import pojos.Categoria;
import pojos.Plato;

/**
 *
 * @author angel_pe_ma
 */
public class PlatoAction extends ActionSupport {

    private List<Plato> listaPlato;
    private List<Categoria> listaCategoria;
    private PlatoDAO platoDAO;
    private CategoriaDAO categoriaDAO;

    private Plato plato;

    private Integer id;
    private Categoria categoria;
    private String nombre;
    private String descripcion;
    private BigDecimal precio;
    private Boolean disponible;

    public PlatoAction() {
        this.platoDAO = new PlatoDAO();
        this.categoriaDAO = new CategoriaDAO();
    }

    public String execute() throws Exception {
        listaPlato = platoDAO.listarPlatos();
        return SUCCESS;
    }

    public String altaPlato() {
        listaCategoria = categoriaDAO.listarCategorias();
        if (nombre != null) {
            Plato plato = new Plato(categoria, nombre, descripcion, precio, disponible);
            platoDAO.crearPlato(plato);
            return SUCCESS;
        } else {
            return INPUT;
        }
    }

    public String eliminarPlato() {
        platoDAO.eliminarPlato(id);
        return SUCCESS;
    }

    public String modificarPlato() {
        listaCategoria = categoriaDAO.listarCategorias();
        plato = platoDAO.consultarPlato(id);
        return SUCCESS;

    }

    public String modificarPlatoGuardar() {

        platoDAO.actualizarPlato(plato);

        return SUCCESS;
    }

    public List<Categoria> getListaCategoria() {
        return listaCategoria;
    }

    public void setListaCategoria(List<Categoria> listaCategoria) {
        this.listaCategoria = listaCategoria;
    }

    public List<Plato> getListaPlato() {
        return listaPlato;
    }

    public void setListaPlato(List<Plato> listaPlato) {
        this.listaPlato = listaPlato;
    }

    public Plato getPlato() {
        return plato;
    }

    public void setPlato(Plato plato) {
        this.plato = plato;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public BigDecimal getPrecio() {
        return precio;
    }

    public void setPrecio(BigDecimal precio) {
        this.precio = precio;
    }

    public Boolean getDisponible() {
        return disponible;
    }

    public void setDisponible(Boolean disponible) {
        this.disponible = disponible;
    }

}
