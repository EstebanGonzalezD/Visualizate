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
                st.executeUpdate("INSERT INTO USUARIO(NOMBRE,NOMBRE_USUARIO,CONTRASEÑA,CORREO,GENERO,FECHA_NACIMIENTO,PUNTAJE, PUNTAJE2) VALUES ('" + usuario.getNombre() + "','" + usuario.getUsuario() + "','" + usuario.getContraseña() + "','" + usuario.getCorreo()+ "','"+usuario.getGenero()+"', to_date('"+usuario.getFecha()+"', 'YYYY/MM/DD'), '0', '0')");
                agregado = true;
                st.close();
            }   
            c.desconexion();
        
          
           
        
        return agregado;
    }

}
