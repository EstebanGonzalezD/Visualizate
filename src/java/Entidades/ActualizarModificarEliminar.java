/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import BaseDeDatos.Conexion;
import Servlets.test;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
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
            st.executeUpdate("update USUARIO set puntaje='" + puntaje + "' where usuario='" + usuario + "'");
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
            st.executeUpdate("update USUARIO set puntaje2='" + puntaje + "' where usuario='" + usuario + "'");
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
            st.executeUpdate("update USUARIO set correo='" + correo + "' where usuario='" + usuario + "'");
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
            st.executeUpdate("delete from Usuario where usuario='" + usuario + "'");
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
            st.executeUpdate("select * from Usuario where usuario='" + usuario + "'");
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
            puntaje = st.executeUpdate("select puntaje from Usuario where nombre_usuario='" + usuario + "'");
            st.close();
        }
        c.desconexion();

        return puntaje;
    }

    /*TODO LO NUEVO DESDE QUE CAMBIAMOS A LA NUEVA VERSIÓN DE LA BASE DE DATOS*/
    public static int ObtenerID(String usuario) throws SQLException {

        int id = 0;

        Conexion c = new Conexion();
        Connection con = c.getConnection();
        ResultSet rs = null;
        Statement st = con.createStatement();
        rs = st.executeQuery("select id_usuario from Usuario where usuario='" + usuario + "'");

        if (rs != null) {
            while (rs.next()) {
                id = rs.getInt(1);
            }

        }
        c.desconexion();

        return id;
    }

    public static boolean InsertarPuntajeTest(int id, String usuario, int puntaje) throws SQLException {

        boolean agregado = false;

        Conexion c = new Conexion();
        Connection con = c.getConnection();

        if (con != null) {
            Statement st;
            st = con.createStatement();
            st.executeUpdate("INSERT INTO SEGUIMIENTO(PUNTAJE,FECHA,USUARIO_ID_USUARIO) VALUES ('" + puntaje + "','19/10/2020','" + id + "')");
            agregado = true;
            st.close();
        }
        c.desconexion();

        return agregado;
    }

    public static int ObtenerID_Test() throws SQLException {

        int id = 0;

        Conexion c = new Conexion();
        Connection con = c.getConnection();

        if (con != null) {
            Statement st;
            st = con.createStatement();
            id = st.executeUpdate("Select count(id_test) from seguimiento");
            st.close();
        }
        c.desconexion();

        return id;
    }

    public static boolean InsertarRespuestasTest(int id, int a, int b, int ce, int d, int e, int f, int g, int h, int i, int j) throws SQLException {

        boolean agregado = false;

        Conexion c = new Conexion();
        Connection con = c.getConnection();

        if (con != null) {
            Statement st;
            st = con.createStatement();
            st.executeUpdate("INSERT INTO resp_pregunta(seguimiento_id_test,pregunta1,pregunta2,pregunta3,pregunta4,pregunta5,pregunta6,pregunta7,pregunta8,pregunta9,pregunta10) VALUES ('" + id + "','" + a + "','" + b + "','" + ce + "','" + d + "','" + e + "','" + f + "','" + g + "','" + h + "','" + i + "','" + j + "')");
            agregado = true;
            st.close();
        }
        c.desconexion();

        return agregado;
    }

    public static boolean ContadorVisitas() throws SQLException {
        boolean agregado = false;
        boolean sw = false;
        int cont = 0;
        Conexion c = new Conexion();
        Connection con = c.getConnection();
        ResultSet rs = null;
        Statement st = con.createStatement();
        rs = st.executeQuery("Select cont_invitados from cont_visitas");

        if (rs != null) {
            while (rs.next()) {
                cont = rs.getInt(1);
            }
            cont = cont + 1;
            sw = ContVisitasSupport(cont);
            if (sw) {
                agregado = true;
            }
            c.desconexion();

        }
        return agregado;
    }

    public static boolean ContVisitasSupport(int cont) throws SQLException {
        boolean status = false;
        Conexion c = new Conexion();
        Connection con = c.getConnection();
        if (con != null) {
            Statement st;
            st = con.createStatement();
            st.executeUpdate("update cont_visitas set cont_invitados='" + cont + "'");
            status = true;
            st.close();
        }
        c.desconexion();

        return status;
    }
}
