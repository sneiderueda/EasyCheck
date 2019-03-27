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
public class resumenInventarios {
    
  private int id_resumenInventario;
  private int resumenInventario_entrada;
  private int resumenInventario_salida;
  private double resumenInventario_costoPromedio;
  private int producto_id_producto;

    public int getId_resumenInventario() {
        return id_resumenInventario;
    }

    public void setId_resumenInventario(int id_resumenInventario) {
        this.id_resumenInventario = id_resumenInventario;
    }

    public int getResumenInventario_entrada() {
        return resumenInventario_entrada;
    }

    public void setResumenInventario_entrada(int resumenInventario_entrada) {
        this.resumenInventario_entrada = resumenInventario_entrada;
    }

    public int getResumenInventario_salida() {
        return resumenInventario_salida;
    }

    public void setResumenInventario_salida(int resumenInventario_salida) {
        this.resumenInventario_salida = resumenInventario_salida;
    }

    public double getResumenInventario_costoPromedio() {
        return resumenInventario_costoPromedio;
    }

    public void setResumenInventario_costoPromedio(double resumenInventario_costoPromedio) {
        this.resumenInventario_costoPromedio = resumenInventario_costoPromedio;
    }

    public int getProducto_id_producto() {
        return producto_id_producto;
    }

    public void setProducto_id_producto(int producto_id_producto) {
        this.producto_id_producto = producto_id_producto;
    }
    
}
