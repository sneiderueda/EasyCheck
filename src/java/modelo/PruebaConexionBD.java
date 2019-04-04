/**
 * @author daniel
 */
package modelo;

import controlador.conection;
import java.sql.SQLException;


public class PruebaConexionBD {

    public static void main(String[] args) throws SQLException {
        conection conn = new conection();
        conn.getConnection();
        
    }
    
}
