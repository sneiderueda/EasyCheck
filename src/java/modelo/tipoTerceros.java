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
public class tipoTerceros {
    
  private int id_tipoTercero;
  private String tipoTercero_descripcion;
  private int tipoTercero_estado;

    public int getId_tipoTercero() {
        return id_tipoTercero;
    }

    public void setId_tipoTercero(int id_tipoTercero) {
        this.id_tipoTercero = id_tipoTercero;
    }

    public String getTipoTercero_descripcion() {
        return tipoTercero_descripcion;
    }

    public void setTipoTercero_descripcion(String tipoTercero_descripcion) {
        this.tipoTercero_descripcion = tipoTercero_descripcion;
    }

    public int getTipoTercero_estado() {
        return tipoTercero_estado;
    }

    public void setTipoTercero_estado(int tipoTercero_estado) {
        this.tipoTercero_estado = tipoTercero_estado;
    }
    
}
