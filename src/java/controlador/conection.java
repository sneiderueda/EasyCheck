/**
 * @author daniel rueda
 */

package controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conection {
    
    private static Connection conn;
    private static final String driver = "com.mysql.cj.jdbc.Driver";
    private static final String user = "root";
    private static final String password = "";
    private static final String url = "jdbc:mysql://localhost:3306/EasyCheck";

    public conection() {
        
        conn = null;
        
        try{
          Class.forName (driver);
          conn = DriverManager.getConnection(url,user,password);
          
            if (conn != null) {
                System.out.println("Conexion establecida");
            }
                    
        }catch (ClassNotFoundException | SQLException e) {
     
            System.out.println("Error al conectar" + e);
        }
    }  
    
    //Este metodo devuelve la conexión
    public Connection getConnection(){
        return conn;
    }
    
    //Este metodo nos desconecta
    public void desconectar(){
        conn = null;
        
        if (conn == null) {
            System.out.println("Conexion terminada");
        }
    }

}

