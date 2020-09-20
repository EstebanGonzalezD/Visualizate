/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import BaseDeDatos.Conexion;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import javax.jms.Session;

/**
 *
 * @author Esteban
 */
public class ActualizarModificarEliminar {

    public static boolean ActualizarElPuntaje(String usuario, int puntaje) throws SQLException {

        boolean agregado = false;

        Conexion c = new Conexion();
        Connection con = c.getConnection();

        if (con != null) {
            Statement st;
            st = con.createStatement();
            st.executeUpdate("update USUARIO set puntaje='" + puntaje + "' where nombre_usuario='" + usuario + "'");
            agregado = true;
            st.close();
        }
        c.desconexion();

        return agregado;
    }
    
    public static boolean ActualizarElPuntaje2(String usuario, int puntaje) throws SQLException {

        boolean agregado = false;

        Conexion c = new Conexion();
        Connection con = c.getConnection();

        if (con != null) {
            Statement st;
            st = con.createStatement();
            st.executeUpdate("update USUARIO set puntaje2='" + puntaje + "' where nombre_usuario='" + usuario + "'");
            agregado = true;
            st.close();
        }
        c.desconexion();

        return agregado;
    }
    
    public static boolean ActualizarElCorreo(String usuario, String correo) throws SQLException {

        boolean agregado = false;

        Conexion c = new Conexion();
        Connection con = c.getConnection();

        if (con != null) {
            Statement st;
            st = con.createStatement();
            st.executeUpdate("update USUARIO set correo='" + correo + "' where nombre_usuario='" + usuario + "'");
            agregado = true;
            st.close();
        }
        c.desconexion();

        return agregado;
    }
    
    public static boolean EliminarUsuario(String usuario) throws SQLException {

        boolean agregado = false;

        Conexion c = new Conexion();
        Connection con = c.getConnection();

        if (con != null) {
            Statement st;
            st = con.createStatement();
            st.executeUpdate("delete from Usuario where nombre_usuario='"+usuario+"'");
            agregado = true;
            st.close();
        }
        c.desconexion();

        return agregado;
    }
    
    public static boolean BuscarUsuario(String usuario) throws SQLException {

        boolean agregado = false;

        Conexion c = new Conexion();
        Connection con = c.getConnection();

        if (con != null) {
            Statement st;
            st = con.createStatement();
            st.executeUpdate("select * from Usuario where nombre_usuario='"+usuario+"'");
            agregado = true;
            st.close();
        }
        c.desconexion();

        return agregado;
    }
    
     public static int BuscarPuntaje(String usuario) throws SQLException {

        int puntaje = 0;

        Conexion c = new Conexion();
        Connection con = c.getConnection();

        if (con != null) {
            Statement st;
            st = con.createStatement();
            puntaje = st.executeUpdate("select puntaje from Usuario where nombre_usuario='"+usuario+"'");
            st.close();
        }
        c.desconexion();

        return puntaje;
    }
    
    
    

}
