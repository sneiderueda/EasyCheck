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
public class tipoDocumentos {
    
  private int id_tipoDocumento;
  private String tipoDocumento_descripcion;
  private int tipoDocumento_estado;
  private int naturaleza_id_naturaleza;

    public int getId_tipoDocumento() {
        return id_tipoDocumento;
    }

    public void setId_tipoDocumento(int id_tipoDocumento) {
        this.id_tipoDocumento = id_tipoDocumento;
    }

    public String getTipoDocumento_descripcion() {
        return tipoDocumento_descripcion;
    }

    public void setTipoDocumento_descripcion(String tipoDocumento_descripcion) {
        this.tipoDocumento_descripcion = tipoDocumento_descripcion;
    }

    public int getTipoDocumento_estado() {
        return tipoDocumento_estado;
    }

    public void setTipoDocumento_estado(int tipoDocumento_estado) {
        this.tipoDocumento_estado = tipoDocumento_estado;
    }

    public int getNaturaleza_id_naturaleza() {
        return naturaleza_id_naturaleza;
    }

    public void setNaturaleza_id_naturaleza(int naturaleza_id_naturaleza) {
        this.naturaleza_id_naturaleza = naturaleza_id_naturaleza;
    }
    
}
