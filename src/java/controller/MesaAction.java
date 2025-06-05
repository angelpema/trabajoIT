/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.MesaDAO;
import java.util.List;
import pojos.Mesa;

/**
 *
 * @author angel_pe_ma
 */
public class MesaAction extends ActionSupport {
    
    private List<Mesa> listaMesa;
    private MesaDAO mesaDAO;
    
    private Mesa mesa;
    
    private int id;
    private String ubicacion;
    private int capacidad;
    private String estado;
    
    public MesaAction() {
        this.mesaDAO = new MesaDAO();
    }
    
    public String execute() throws Exception {
        listaMesa = mesaDAO.listarMesas();
        return SUCCESS;
    }
    
    public String altaMesa() {
        if (ubicacion != null) {
            Mesa mesa = new Mesa(ubicacion, capacidad);
            mesaDAO.crearMesa(mesa);
            return SUCCESS;
        } else {
            return INPUT;
        }
    }

    public String eliminarMesa() {
        mesaDAO.eliminarMesa(id);
        return SUCCESS;
    }

    public String modificarMesa() {
        mesa = mesaDAO.consultarMesa(id);
        return SUCCESS;

    }

    public String modificarMesaGuardar() {

        mesaDAO.actualizarMesa(mesa);

        return SUCCESS;
    }

    public List<Mesa> getListaMesa() {
        return listaMesa;
    }

    public void setListaMesa(List<Mesa> listaMesa) {
        this.listaMesa = listaMesa;
    }

    public Mesa getMesa() {
        return mesa;
    }

    public void setMesa(Mesa mesa) {
        this.mesa = mesa;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
    
}
