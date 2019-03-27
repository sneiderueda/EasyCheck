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
public class perfiles {
    
  private int id_perfil;
  private String perfil_descripcion;
  private int perfil_estado;

    public int getId_perfil() {
        return id_perfil;
    }

    public void setId_perfil(int id_perfil) {
        this.id_perfil = id_perfil;
    }

    public String getPerfil_descripcion() {
        return perfil_descripcion;
    }

    public void setPerfil_descripcion(String perfil_descripcion) {
        this.perfil_descripcion = perfil_descripcion;
    }

    public int getPerfil_estado() {
        return perfil_estado;
    }

    public void setPerfil_estado(int perfil_estado) {
        this.perfil_estado = perfil_estado;
    }
    
}
