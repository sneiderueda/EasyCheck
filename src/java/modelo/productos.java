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
public class productos {
    
  private int id_producto;
  private String producto_descripcion;
  private int producto_estado;
  private int unidadMedida_id_unidadMedida;

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getProducto_descripcion() {
        return producto_descripcion;
    }

    public void setProducto_descripcion(String producto_descripcion) {
        this.producto_descripcion = producto_descripcion;
    }

    public int getProducto_estado() {
        return producto_estado;
    }

    public void setProducto_estado(int producto_estado) {
        this.producto_estado = producto_estado;
    }

    public int getUnidadMedida_id_unidadMedida() {
        return unidadMedida_id_unidadMedida;
    }

    public void setUnidadMedida_id_unidadMedida(int unidadMedida_id_unidadMedida) {
        this.unidadMedida_id_unidadMedida = unidadMedida_id_unidadMedida;
    }
    
}
