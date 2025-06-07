/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.AlertaDAO;
import dao.IngredienteDAO;
import java.util.Date;
import java.util.List;
import pojos.Alerta;
import pojos.Ingrediente;

/**
 *
 * @author angel_pe_ma
 */
public class AlertaAction extends ActionSupport {

    private List<Alerta> listaAlerta;
    private List<Ingrediente> listaIngrediente;

    private AlertaDAO alertaDAO;
    private IngredienteDAO ingredienteDAO;

    private Alerta alerta;

    private Integer id;
    private Ingrediente ingrediente;
    private String mensaje;
    private Date fecha;
    private Boolean resuelta;

    public AlertaAction() {
        this.alertaDAO = new AlertaDAO();
        this.ingredienteDAO = new IngredienteDAO();
    }

    public String execute() throws Exception {
        listaAlerta = alertaDAO.listarAlertas();
        return SUCCESS;
    }

    public String altaAlerta() {
        listaIngrediente = ingredienteDAO.listarIngredientes();
        if (ingrediente != null) {
            Alerta alerta = new Alerta(ingrediente, mensaje);
            alertaDAO.crearAlerta(alerta);
            return SUCCESS;
        } else {
            return INPUT;
        }
    }

    public String eliminarAlerta() {
        alertaDAO.eliminarAlerta(id);
        return SUCCESS;
    }

    public String modificarAlerta() {
        listaIngrediente = ingredienteDAO.listarIngredientes();
        alerta = alertaDAO.consultarAlerta(id);
        return SUCCESS;
    }

    public String modificarAlertaGuardar() {

        alertaDAO.actualizarAlerta(alerta);

        return SUCCESS;
    }

    public List<Alerta> getListaAlerta() {
        return listaAlerta;
    }

    public void setListaAlerta(List<Alerta> listaAlerta) {
        this.listaAlerta = listaAlerta;
    }

    public List<Ingrediente> getListaIngrediente() {
        return listaIngrediente;
    }

    public void setListaIngrediente(List<Ingrediente> listaIngrediente) {
        this.listaIngrediente = listaIngrediente;
    }

    public Alerta getAlerta() {
        return alerta;
    }

    public void setAlerta(Alerta alerta) {
        this.alerta = alerta;
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

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Boolean getResuelta() {
        return resuelta;
    }

    public void setResuelta(Boolean resuelta) {
        this.resuelta = resuelta;
    }
    
    
}
