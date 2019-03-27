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
public class transaccionCabeceras {
    
  private int id_transaccionCabecera;
  private int tansaccionCabecera_numeroDocumento;
  private String transaccionCabecera_fecha;
  private int tercero_id_tercero;
  private int usuario_id_usuario;
  private int tipoDocumento_id_tipoDocumento;

    public int getId_transaccionCabecera() {
        return id_transaccionCabecera;
    }

    public void setId_transaccionCabecera(int id_transaccionCabecera) {
        this.id_transaccionCabecera = id_transaccionCabecera;
    }

    public int getTansaccionCabecera_numeroDocumento() {
        return tansaccionCabecera_numeroDocumento;
    }

    public void setTansaccionCabecera_numeroDocumento(int tansaccionCabecera_numeroDocumento) {
        this.tansaccionCabecera_numeroDocumento = tansaccionCabecera_numeroDocumento;
    }

    public String getTransaccionCabecera_fecha() {
        return transaccionCabecera_fecha;
    }

    public void setTransaccionCabecera_fecha(String transaccionCabecera_fecha) {
        this.transaccionCabecera_fecha = transaccionCabecera_fecha;
    }

    public int getTercero_id_tercero() {
        return tercero_id_tercero;
    }

    public void setTercero_id_tercero(int tercero_id_tercero) {
        this.tercero_id_tercero = tercero_id_tercero;
    }

    public int getUsuario_id_usuario() {
        return usuario_id_usuario;
    }

    public void setUsuario_id_usuario(int usuario_id_usuario) {
        this.usuario_id_usuario = usuario_id_usuario;
    }

    public int getTipoDocumento_id_tipoDocumento() {
        return tipoDocumento_id_tipoDocumento;
    }

    public void setTipoDocumento_id_tipoDocumento(int tipoDocumento_id_tipoDocumento) {
        this.tipoDocumento_id_tipoDocumento = tipoDocumento_id_tipoDocumento;
    }
    
}
