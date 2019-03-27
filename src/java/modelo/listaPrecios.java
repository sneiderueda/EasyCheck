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
public class listaPrecios {
    
  private int id_listaPrecio;
  private double listaPrecio_precioVenta;
  private String listaPrecio_fechaInicio;
  private String listaPrecio_fechaFinal;
  private double listaPrecio_IVA;
  private int listaPrecio_estado;
  private int producto_id_producto;

    public int getId_listaPrecio() {
        return id_listaPrecio;
    }

    public void setId_listaPrecio(int id_listaPrecio) {
        this.id_listaPrecio = id_listaPrecio;
    }

    public double getListaPrecio_precioVenta() {
        return listaPrecio_precioVenta;
    }

    public void setListaPrecio_precioVenta(double listaPrecio_precioVenta) {
        this.listaPrecio_precioVenta = listaPrecio_precioVenta;
    }

    public String getListaPrecio_fechaInicio() {
        return listaPrecio_fechaInicio;
    }

    public void setListaPrecio_fechaInicio(String listaPrecio_fechaInicio) {
        this.listaPrecio_fechaInicio = listaPrecio_fechaInicio;
    }

    public String getListaPrecio_fechaFinal() {
        return listaPrecio_fechaFinal;
    }

    public void setListaPrecio_fechaFinal(String listaPrecio_fechaFinal) {
        this.listaPrecio_fechaFinal = listaPrecio_fechaFinal;
    }

    public double getListaPrecio_IVA() {
        return listaPrecio_IVA;
    }

    public void setListaPrecio_IVA(double listaPrecio_IVA) {
        this.listaPrecio_IVA = listaPrecio_IVA;
    }

    public int getListaPrecio_estado() {
        return listaPrecio_estado;
    }

    public void setListaPrecio_estado(int listaPrecio_estado) {
        this.listaPrecio_estado = listaPrecio_estado;
    }

    public int getProducto_id_producto() {
        return producto_id_producto;
    }

    public void setProducto_id_producto(int producto_id_producto) {
        this.producto_id_producto = producto_id_producto;
    }
  
  
    
}
