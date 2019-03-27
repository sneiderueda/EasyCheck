/**
 * @author daniel rueda
 */
package modelo;


public class usuarios {
    
    private int id_usuario;
    private String usuario_apellido;
    private String usuario_nombre;
    private int usuario_documento;
    private int usuario_celular;
    private String usuario_direccion;
    private String usuario_contrasena;
    private int usuario_estado;
    private int perfil_id_perfil;
    private int terceroDocumento_id_terceroDocumento;

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getUsuario_apellido() {
        return usuario_apellido;
    }

    public void setUsuario_apellido(String usuario_apellido) {
        this.usuario_apellido = usuario_apellido;
    }

    public String getUsuario_nombre() {
        return usuario_nombre;
    }

    public void setUsuario_nombre(String usuario_nombre) {
        this.usuario_nombre = usuario_nombre;
    }

    public int getUsuario_documento() {
        return usuario_documento;
    }

    public void setUsuario_documento(int usuario_documento) {
        this.usuario_documento = usuario_documento;
    }

    public int getUsuario_celular() {
        return usuario_celular;
    }

    public void setUsuario_celular(int usuario_celular) {
        this.usuario_celular = usuario_celular;
    }

    public String getUsuario_direccion() {
        return usuario_direccion;
    }

    public void setUsuario_direccion(String usuario_direccion) {
        this.usuario_direccion = usuario_direccion;
    }

    public String getUsuario_contrasena() {
        return usuario_contrasena;
    }

    public void setUsuario_contrasena(String usuario_contrasena) {
        this.usuario_contrasena = usuario_contrasena;
    }

    public int getUsuario_estado() {
        return usuario_estado;
    }

    public void setUsuario_estado(int usuario_estado) {
        this.usuario_estado = usuario_estado;
    }

    public int getPerfil_id_perfil() {
        return perfil_id_perfil;
    }

    public void setPerfil_id_perfil(int perfil_id_perfil) {
        this.perfil_id_perfil = perfil_id_perfil;
    }

    public int getTerceroDocumento_id_terceroDocumento() {
        return terceroDocumento_id_terceroDocumento;
    }

    public void setTerceroDocumento_id_terceroDocumento(int terceroDocumento_id_terceroDocumento) {
        this.terceroDocumento_id_terceroDocumento = terceroDocumento_id_terceroDocumento;
    }
    
}
