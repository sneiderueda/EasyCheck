/**
 * @author daniel
 */
package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
import modelo.usuarios;
import modelo.usuariosMain;


public class usuariosDAO {

    public String usuarioAgregar(usuarios miUsuario) {
        conection miConexion = new conection();
        Connection conn;
        conn = miConexion.getConnection();
        
        String  miRespuesta;
                
        PreparedStatement sentencia;
        
        try{
            String query = " INSERT INTO usuarios (usuario_apellido,usuario_nombre,usuario_documento,usuario_celular,usuario_direccion,usuario_contrasena) "
                    + " VALUES (?,?,?,?,?,?);";
            
            //quitar valores por defecto en la base de datos a perfil y tipodoc
            
            sentencia = conn.prepareStatement(query);
            sentencia.setString(1,miUsuario.getUsuario_apellido());
            sentencia.setString(2,miUsuario.getUsuario_nombre());
            sentencia.setInt(3,miUsuario.getUsuario_documento());
            sentencia.setInt(4,miUsuario.getUsuario_celular());
            sentencia.setString(5,miUsuario.getUsuario_direccion());
            sentencia.setString(6,miUsuario.getUsuario_contrasena());
            sentencia.execute();
            
            miRespuesta  = "";
            
        }catch (Exception e){
            miRespuesta = e.getMessage();
            System.out.println("Ocurrio un error en usuarioDAO " + e.getMessage());
        }
        
        return miRespuesta;
    }
        
    public usuarios consultarUsuarios (int identificacion){
        
        usuarios miUsuario = null;
        
        conection miConexion = new conection();
        Connection conn;
        conn = miConexion.getConnection();
        
        try {
            Statement sentencia = conn.createStatement();
            
            //String querySQL = " CALL SP_usuarios ('1','','','','"+identificacion+"','','','','','','');";
            String querySQL = " SELECT id_usuario,usuario_apellido,usuario_nombre,usuario_documento,usuario_celular,usuario_direccion,usuario_contrasena,usuario_estado,perfil_id_perfil,terceroDocumento_id_terceroDocumento FROM usuarios WHERE usuario_documento = "+ identificacion + ";";
            
            ResultSet rs = sentencia.executeQuery(querySQL);
            
            while (rs.next()){
                miUsuario = new usuarios();
                miUsuario.setId_usuario(rs.getInt(1));
                miUsuario.setUsuario_apellido(rs.getString(2));
                miUsuario.setUsuario_nombre(rs.getString(3));
                miUsuario.setUsuario_documento(rs.getInt(4));
                miUsuario.setUsuario_celular(rs.getInt(5));
                miUsuario.setUsuario_direccion(rs.getString(6));
                miUsuario.setUsuario_contrasena(rs.getString(7));
                miUsuario.setUsuario_estado(rs.getInt(8));
                miUsuario.setPerfil_id_perfil(rs.getInt(9));
                miUsuario.setTerceroDocumento_id_terceroDocumento(rs.getInt(10));
                
              return miUsuario;  
            }
        } catch (SQLException ex) {
            JOptionPane.showConfirmDialog(null,"Error encontrado " + ex.getMessage(), " consulta usuario"  ,  0);
            System.out.println(ex.getMessage());
        }
        return miUsuario;
    }
}
