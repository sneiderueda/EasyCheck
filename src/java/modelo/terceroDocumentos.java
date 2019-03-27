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
public class terceroDocumentos {
    
  private int id_terceroDocumento;
  private String terceroDocumento_descripcion;
  private int terceroDocumento_estado;

    public int getId_terceroDocumento() {
        return id_terceroDocumento;
    }

    public void setId_terceroDocumento(int id_terceroDocumento) {
        this.id_terceroDocumento = id_terceroDocumento;
    }

    public String getTerceroDocumento_descripcion() {
        return terceroDocumento_descripcion;
    }

    public void setTerceroDocumento_descripcion(String terceroDocumento_descripcion) {
        this.terceroDocumento_descripcion = terceroDocumento_descripcion;
    }

    public int getTerceroDocumento_estado() {
        return terceroDocumento_estado;
    }

    public void setTerceroDocumento_estado(int terceroDocumento_estado) {
        this.terceroDocumento_estado = terceroDocumento_estado;
    }
}
