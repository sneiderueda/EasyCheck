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
public class facturaVentas {
    
  private int id_facturaVenta;
  private int facturaVenta_pagada;
  private String facturaVenta_fechaPago;
  private double facturaVenta_valorTotal;
  private int transaccionCabecera_id_transaccionCabecera;

    public int getId_facturaVenta() {
        return id_facturaVenta;
    }

    public void setId_facturaVenta(int id_facturaVenta) {
        this.id_facturaVenta = id_facturaVenta;
    }

    public int getFacturaVenta_pagada() {
        return facturaVenta_pagada;
    }

    public void setFacturaVenta_pagada(int facturaVenta_pagada) {
        this.facturaVenta_pagada = facturaVenta_pagada;
    }

    public String getFacturaVenta_fechaPago() {
        return facturaVenta_fechaPago;
    }

    public void setFacturaVenta_fechaPago(String facturaVenta_fechaPago) {
        this.facturaVenta_fechaPago = facturaVenta_fechaPago;
    }

    public double getFacturaVenta_valorTotal() {
        return facturaVenta_valorTotal;
    }

    public void setFacturaVenta_valorTotal(double facturaVenta_valorTotal) {
        this.facturaVenta_valorTotal = facturaVenta_valorTotal;
    }

    public int getTransaccionCabecera_id_transaccionCabecera() {
        return transaccionCabecera_id_transaccionCabecera;
    }

    public void setTransaccionCabecera_id_transaccionCabecera(int transaccionCabecera_id_transaccionCabecera) {
        this.transaccionCabecera_id_transaccionCabecera = transaccionCabecera_id_transaccionCabecera;
    }
    
}
