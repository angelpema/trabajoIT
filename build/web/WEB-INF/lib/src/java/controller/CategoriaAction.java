/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.CategoriaDAO;
import java.util.List;
import pojos.Categoria;

/**
 *
 * @author angel_pe_ma
 */
public class CategoriaAction extends ActionSupport {

    private List<Categoria> listaCategoria;
    private CategoriaDAO categoriaDAO;
    
    private Categoria categoria;

    private int id;
    private String nombre;

    public CategoriaAction() {
        this.categoriaDAO = new CategoriaDAO();
    }

    public String execute() throws Exception {
        listaCategoria = categoriaDAO.listarCategorias();
        return SUCCESS;
    }

    public String altaCategoria() {
        if (nombre != null) {
            Categoria categoria = new Categoria(nombre);
            categoriaDAO.crearCategoria(categoria);
            return SUCCESS;
        } else {
            return INPUT;
        }
    }

    public String eliminarCategoria() {
        categoriaDAO.eliminarCategoria(id);
        return SUCCESS;
    }

    public String modificarCategoria() {
        categoria = categoriaDAO.consultarCategoria(id);
        return SUCCESS;

    }

    public String modificarCategoriaGuardar() {

        categoriaDAO.actualizarCategoria(categoria);

        return SUCCESS;
    }

    public List<Categoria> getListaCategoria() {
        return listaCategoria;
    }

    public void setListaCategoria(List<Categoria> listaCategoria) {
        this.listaCategoria = listaCategoria;
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

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

}
