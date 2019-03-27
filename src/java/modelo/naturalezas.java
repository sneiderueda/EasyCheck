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
public class naturalezas {
    
  private int id_naturaleza;
  private String naturaleza_descripcion;
  private String naturaleza_afectacion;
  private String naturaleza_estado;

    public int getId_naturaleza() {
        return id_naturaleza;
    }

    public void setId_naturaleza(int id_naturaleza) {
        this.id_naturaleza = id_naturaleza;
    }

    public String getNaturaleza_descripcion() {
        return naturaleza_descripcion;
    }

    public void setNaturaleza_descripcion(String naturaleza_descripcion) {
        this.naturaleza_descripcion = naturaleza_descripcion;
    }

    public String getNaturaleza_afectacion() {
        return naturaleza_afectacion;
    }

    public void setNaturaleza_afectacion(String naturaleza_afectacion) {
        this.naturaleza_afectacion = naturaleza_afectacion;
    }

    public String getNaturaleza_estado() {
        return naturaleza_estado;
    }

    public void setNaturaleza_estado(String naturaleza_estado) {
        this.naturaleza_estado = naturaleza_estado;
    }
    
}
