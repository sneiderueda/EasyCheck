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
public class compras {
  private int id_compra;
  private String compra_descripcion;
  private int compra_pagada;
  private String compra_fechaPago;
  private double compra_valorTotal;
  private int transaccionCabecera_id_transaccionCabecera;

    public int getId_compra() {
        return id_compra;
    }

    public void setId_compra(int id_compra) {
        this.id_compra = id_compra;
    }

    public String getCompra_descripcion() {
        return compra_descripcion;
    }

    public void setCompra_descripcion(String compra_descripcion) {
        this.compra_descripcion = compra_descripcion;
    }

    public int getCompra_pagada() {
        return compra_pagada;
    }

    public void setCompra_pagada(int compra_pagada) {
        this.compra_pagada = compra_pagada;
    }

    public String getCompra_fechaPago() {
        return compra_fechaPago;
    }

    public void setCompra_fechaPago(String compra_fechaPago) {
        this.compra_fechaPago = compra_fechaPago;
    }

    public double getCompra_valorTotal() {
        return compra_valorTotal;
    }

    public void setCompra_valorTotal(double compra_valorTotal) {
        this.compra_valorTotal = compra_valorTotal;
    }

    public int getTransaccionCabecera_id_transaccionCabecera() {
        return transaccionCabecera_id_transaccionCabecera;
    }

    public void setTransaccionCabecera_id_transaccionCabecera(int transaccionCabecera_id_transaccionCabecera) {
        this.transaccionCabecera_id_transaccionCabecera = transaccionCabecera_id_transaccionCabecera;
    }
  
}
