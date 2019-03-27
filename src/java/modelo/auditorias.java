/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author daniel
 */
public class auditorias {
    
  private int id_auditoria;
  private int id_tabla;
  private int id_nombreLlave;
  private int id_valorLlave;
  private String auditoria_resumenTransaccion;
  private String auditoria_fechaOperacion;

    public int getId_auditoria() {
        return id_auditoria;
    }

    public void setId_auditoria(int id_auditoria) {
        this.id_auditoria = id_auditoria;
    }

    public int getId_tabla() {
        return id_tabla;
    }

    public void setId_tabla(int id_tabla) {
        this.id_tabla = id_tabla;
    }

    public int getId_nombreLlave() {
        return id_nombreLlave;
    }

    public void setId_nombreLlave(int id_nombreLlave) {
        this.id_nombreLlave = id_nombreLlave;
    }

    public int getId_valorLlave() {
        return id_valorLlave;
    }

    public void setId_valorLlave(int id_valorLlave) {
        this.id_valorLlave = id_valorLlave;
    }

    public String getAuditoria_resumenTransaccion() {
        return auditoria_resumenTransaccion;
    }

    public void setAuditoria_resumenTransaccion(String auditoria_resumenTransaccion) {
        this.auditoria_resumenTransaccion = auditoria_resumenTransaccion;
    }

    public String getAuditoria_fechaOperacion() {
        return auditoria_fechaOperacion;
    }

    public void setAuditoria_fechaOperacion(String auditoria_fechaOperacion) {
        this.auditoria_fechaOperacion = auditoria_fechaOperacion;
    }
  
    
}
