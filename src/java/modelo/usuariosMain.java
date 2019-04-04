package modelo;

import controlador.usuariosDAO;
import java.util.Scanner;

public class usuariosMain {

    public static void main(String[] args) {
        usuariosDAO usuDAO = new usuariosDAO();
        usuarios miUsuario = new usuarios();
       
        Scanner lea = new Scanner(System.in);
        
        String respuesta = "";
        String usuario_apellido = "";
        String usuario_nombre = "";
        int usuario_documento;
        int usuario_celular;
        String usuario_direccion = "";
        String usuario_contrasena = "";
        
        System.out.println("Ingrese apellido: ");
        usuario_apellido = lea.nextLine();
        
        System.out.println("Ingrese nombre: ");
        usuario_nombre = lea.nextLine();
        
        System.out.println("Ingrese documento: ");
        usuario_documento = lea.nextInt();
        
        System.out.println("Ingrese celular: ");
        usuario_celular = lea.nextInt();
        
        System.out.println("Ingrese direccion: ");
        usuario_direccion = lea.nextLine();
        
        System.out.println("Ingrese contraseña: ");
        usuario_contrasena = lea.nextLine();
        
        miUsuario.setUsuario_apellido(usuario_apellido);
        miUsuario.setUsuario_nombre(usuario_nombre);
        miUsuario.setUsuario_documento(usuario_documento);
        miUsuario.setUsuario_celular(usuario_celular);
        miUsuario.setUsuario_direccion(usuario_direccion);
        miUsuario.setUsuario_contrasena(usuario_contrasena);
        
        
        respuesta = usuDAO.usuarioAgregar(miUsuario);
    }
    
}
