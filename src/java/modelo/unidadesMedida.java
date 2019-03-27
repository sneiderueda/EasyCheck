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
public class unidadesMedida {
    
  private String id_unidadMedida;
  private String unidadMedida_descripcion;
  private String unidadMedida_estado;

    public String getId_unidadMedida() {
        return id_unidadMedida;
    }

    public void setId_unidadMedida(String id_unidadMedida) {
        this.id_unidadMedida = id_unidadMedida;
    }

    public String getUnidadMedida_descripcion() {
        return unidadMedida_descripcion;
    }

    public void setUnidadMedida_descripcion(String unidadMedida_descripcion) {
        this.unidadMedida_descripcion = unidadMedida_descripcion;
    }

    public String getUnidadMedida_estado() {
        return unidadMedida_estado;
    }

    public void setUnidadMedida_estado(String unidadMedida_estado) {
        this.unidadMedida_estado = unidadMedida_estado;
    }
    
}
