package Entidades;

import BaseDeDatos.Conexion;
import Entidades.Usuario;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class CrearUsuario {
    
    public static boolean agregarUsuario(Usuario usuario) throws SQLException {
        boolean agregado = false;
        
            Conexion c = new Conexion();
            Connection con = c.getConnection();
            if (con != null) {
                Statement st;
                st = con.createStatement();
                st.executeUpdate("INSERT INTO USUARIO(USUARIO,CONTRASENIA,NOMBRE_USUARIO,GENERO,CORREO,FECHA_NACIMIENTO) VALUES ('" + usuario.getUsuario() + "','" + usuario.getContraseña() + "','" + usuario.getNombre() + "','"+usuario.getGenero()+"','"+usuario.getCorreo()+"', to_date('"+usuario.getFecha()+"', 'YYYY/MM/DD'))");
                agregado = true;
                st.close();
            }   
            c.desconexion();
        
          
           
        
        return agregado;
    }

}
