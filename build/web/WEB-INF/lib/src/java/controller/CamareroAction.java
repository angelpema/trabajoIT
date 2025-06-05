/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.CamareroDAO;
import java.util.List;
import pojos.Camarero;

/**
 *
 * @author angel_pe_ma
 */
public class CamareroAction extends ActionSupport {

    private List<Camarero> listaCamarero;
    private CamareroDAO camareroDAO;
    
    private Camarero camarero;

    private Integer id;
    private String dni;
    private String nombre;
    private String apellidos;
    private String turno;

    public CamareroAction() {
        this.camareroDAO = new CamareroDAO();
    }

    public String execute() throws Exception {
        listaCamarero = camareroDAO.listarCamareros();
        return SUCCESS;
    }

    public String altaCamarero() {
        if (dni != null) {
            Camarero camarero = new Camarero(dni, nombre, apellidos, turno);
            camareroDAO.crearCamarero(camarero);
            return SUCCESS;
        } else {
            return INPUT;
        }
    }

    public String eliminarCamarero() {
        camareroDAO.eliminarCamarero(id);
        return SUCCESS;
    }

    public String modificarCamarero() {
        camarero = camareroDAO.consultarCamarero(id);
        return SUCCESS;

    }

    public String modificarCamareroGuardar() {
        
        camareroDAO.actualizarCamarero(camarero);

        return SUCCESS;
    }

    public CamareroDAO getCamareroDAO() {
        return camareroDAO;
    }

    public void setCamareroDAO(CamareroDAO camareroDAO) {
        this.camareroDAO = camareroDAO;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }

    public List<Camarero> getListaCamarero() {
        return listaCamarero;
    }

    public void setListaCamarero(List<Camarero> listaCamarero) {
        this.listaCamarero = listaCamarero;
    }

    public Camarero getCamarero() {
        return camarero;
    }

    public void setCamarero(Camarero camarero) {
        this.camarero = camarero;
    }

}
