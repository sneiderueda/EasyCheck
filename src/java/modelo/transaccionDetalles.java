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
public class transaccionDetalles {
    
  private int id_transaccionDetalle;
  private int transaccionDetalle_cantidad;
  private double transaccionDetalle_valor;
  private int transaccionCabecera_id_transaccionCabecera;
  private int producto_id_producto;
  private int usuario_id_usuario;

    public int getId_transaccionDetalle() {
        return id_transaccionDetalle;
    }

    public void setId_transaccionDetalle(int id_transaccionDetalle) {
        this.id_transaccionDetalle = id_transaccionDetalle;
    }

    public int getTransaccionDetalle_cantidad() {
        return transaccionDetalle_cantidad;
    }

    public void setTransaccionDetalle_cantidad(int transaccionDetalle_cantidad) {
        this.transaccionDetalle_cantidad = transaccionDetalle_cantidad;
    }

    public double getTransaccionDetalle_valor() {
        return transaccionDetalle_valor;
    }

    public void setTransaccionDetalle_valor(double transaccionDetalle_valor) {
        this.transaccionDetalle_valor = transaccionDetalle_valor;
    }

    public int getTransaccionCabecera_id_transaccionCabecera() {
        return transaccionCabecera_id_transaccionCabecera;
    }

    public void setTransaccionCabecera_id_transaccionCabecera(int transaccionCabecera_id_transaccionCabecera) {
        this.transaccionCabecera_id_transaccionCabecera = transaccionCabecera_id_transaccionCabecera;
    }

    public int getProducto_id_producto() {
        return producto_id_producto;
    }

    public void setProducto_id_producto(int producto_id_producto) {
        this.producto_id_producto = producto_id_producto;
    }

    public int getUsuario_id_usuario() {
        return usuario_id_usuario;
    }

    public void setUsuario_id_usuario(int usuario_id_usuario) {
        this.usuario_id_usuario = usuario_id_usuario;
    }
    
}
