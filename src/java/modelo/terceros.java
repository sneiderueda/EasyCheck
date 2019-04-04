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
public class terceros {
    
  private int id_tercero;
  private int tercero_numeroDocumento;
  private String tercero_nombre;
  private String tercero_apellido;
  private int tercero_celular;
  private String tercero_direccion;
  private int tercero_estado;
  private int tipoTercero_id_tipoTercero;
  private int terceroDocumento_id_terceroDocumento;

    public int getId_tercero() {
        return id_tercero;
    }

    public void setId_tercero(int id_tercero) {
        this.id_tercero = id_tercero;
    }

    public int getTercero_numeroDocumento() {
        return tercero_numeroDocumento;
    }

    public void setTercero_numeroDocumento(int tercero_numeroDocumento) {
        this.tercero_numeroDocumento = tercero_numeroDocumento;
    }

    public String getTercero_nombre() {
        return tercero_nombre;
    }

    public void setTercero_nombre(String tercero_nombre) {
        this.tercero_nombre = tercero_nombre;
    }

    public String getTercero_apellido() {
        return tercero_apellido;
    }

    public void setTercero_apellido(String tercero_apellido) {
        this.tercero_apellido = tercero_apellido;
    }

    public int getTercero_celular() {
        return tercero_celular;
    }

    public void setTercero_celular(int tercero_celular) {
        this.tercero_celular = tercero_celular;
    }

    public String getTercero_direccion() {
        return tercero_direccion;
    }

    public void setTercero_direccion(String tercero_direccion) {
        this.tercero_direccion = tercero_direccion;
    }

    public int getTercero_estado() {
        return tercero_estado;
    }

    public void setTercero_estado(int tercero_estado) {
        this.tercero_estado = tercero_estado;
    }

    public int getTipoTercero_id_tipoTercero() {
        return tipoTercero_id_tipoTercero;
    }

    public void setTipoTercero_id_tipoTercero(int tipoTercero_id_tipoTercero) {
        this.tipoTercero_id_tipoTercero = tipoTercero_id_tipoTercero;
    }

    public int getTerceroDocumento_id_terceroDocumento() {
        return terceroDocumento_id_terceroDocumento;
    }

    public void setTerceroDocumento_id_terceroDocumento(int terceroDocumento_id_terceroDocumento) {
        this.terceroDocumento_id_terceroDocumento = terceroDocumento_id_terceroDocumento;
    }
    
}
