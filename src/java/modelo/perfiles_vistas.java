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
public class perfiles_vistas {
    
  private int id_perfil_vista;
  private int perfil_id_perfil;
  private int vista_id_vista;

    public int getId_perfil_vista() {
        return id_perfil_vista;
    }

    public void setId_perfil_vista(int id_perfil_vista) {
        this.id_perfil_vista = id_perfil_vista;
    }

    public int getPerfil_id_perfil() {
        return perfil_id_perfil;
    }

    public void setPerfil_id_perfil(int perfil_id_perfil) {
        this.perfil_id_perfil = perfil_id_perfil;
    }

    public int getVista_id_vista() {
        return vista_id_vista;
    }

    public void setVista_id_vista(int vista_id_vista) {
        this.vista_id_vista = vista_id_vista;
    }
    
}
