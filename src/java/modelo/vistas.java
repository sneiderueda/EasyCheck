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
public class vistas {
    
  private int id_vista;
  private String vista_descripcion;
  private String vista_dependencia;
  private int vista_estado;

    public int getId_vista() {
        return id_vista;
    }

    public void setId_vista(int id_vista) {
        this.id_vista = id_vista;
    }

    public String getVista_descripcion() {
        return vista_descripcion;
    }

    public void setVista_descripcion(String vista_descripcion) {
        this.vista_descripcion = vista_descripcion;
    }

    public String getVista_dependencia() {
        return vista_dependencia;
    }

    public void setVista_dependencia(String vista_dependencia) {
        this.vista_dependencia = vista_dependencia;
    }

    public int getVista_estado() {
        return vista_estado;
    }

    public void setVista_estado(int vista_estado) {
        this.vista_estado = vista_estado;
    }
    
}
