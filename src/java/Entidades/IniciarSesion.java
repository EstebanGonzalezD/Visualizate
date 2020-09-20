/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import BaseDeDatos.Conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Esteban
 */
public class IniciarSesion {

    public static boolean Login(String nombre_usuario, String contraseña) throws SQLException {
        ResultSet resultado = null;
        boolean agregado = false;
        // try {
        Conexion c = new Conexion();
        Connection con = c.getConnection();
        if (con != null) {
            Statement st;
            st = con.createStatement();
            resultado = st.executeQuery("SELECT COUNT(*) FROM USUARIO WHERE nombre_usuario='" + nombre_usuario + "' and contraseña='" + contraseña + "'");

            /*if (resultado.getInt(1) == 0) {
            
                agregado = false;
            } else {
                agregado = true;
            }*/
            if (resultado.next() == true) {
                
            }
            
            if (resultado.getInt(1) == 0) {
                agregado = false;
            } else {
                agregado = true;
            }
            
            st.close();
        }

        c.desconexion();
        /*catch (Exception e) {
            agregado = false;
            e.printStackTrace();
        }*/

        return agregado;
    }
}
