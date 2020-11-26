package Entidades;

import BaseDeDatos.Conexion;
import Servlets.test;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jms.Session;

/**
 *
 * @author Esteban
 */
public class Procedimientos {

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

    public static boolean ActualizarElCorreo(String us_cambio, String usuario,String nombre,String contrasenia, String correo,  String fecha, String genero) throws SQLException {

        boolean agregado = false;

        Conexion c = new Conexion();
        Connection con = c.getConnection();

        if (con != null) {
            Statement st;
            st = con.createStatement();
            st.executeUpdate("update USUARIO set usuario='" + usuario + "',nombre_usuario='"+ nombre +"' ,contrasenia='"+ contrasenia +"' ,correo='"+ correo +"' , fecha_nacimiento='"+ fecha +"' , genero='"+ genero +"' where usuario='" + us_cambio + "'");
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

        Date ahora = new Date();
        SimpleDateFormat formateador = new SimpleDateFormat("dd/MM/yyyy");

        boolean agregado = false;
        Conexion c = new Conexion();
        Connection con = c.getConnection();

        if (con != null) {
            Statement st;
            st = con.createStatement();
            st.executeUpdate("INSERT INTO SEGUIMIENTO(PUNTAJE,FECHA,USUARIO_ID_USUARIO) VALUES ('" + puntaje + "','" + formateador.format(ahora) + "','" + id + "')");
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
        if (con != null) {
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
            st.close();
        }
        c.desconexion();
        return agregado;
    }

    public static boolean ContVisitasSupport(int cont) throws SQLException {
        boolean status = false;
        Conexion c = new Conexion();
        Connection con = c.getConnection();
        if (con != null) {
            Statement st;
            st = con.createStatement();
            st.executeQuery("update cont_visitas set cont_invitados='" + cont + "'");
            status = true;
            st.close();
        }
        c.desconexion();

        return status;
    }

    public static String[] GraficoFecha(String usuario) throws ParseException, SQLException {
        int tam = GraficoTamaño(usuario);
        int cont = 0;
        String arr[] = new String[tam];
        Conexion c = new Conexion();
        Connection con = c.getConnection();
        try {
            Statement st;
            st = con.createStatement();
            ResultSet fechas = st.executeQuery("SELECT * FROM usuario INNER JOIN seguimiento ON usuario.id_usuario=seguimiento.usuario_id_usuario where usuario.usuario = '" + usuario + "' order by seguimiento.id_test asc");
            while (fechas.next()) {
                String date_s = fechas.getString("FECHA");
                SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
                Date date = dt.parse(date_s);
                SimpleDateFormat dt1 = new SimpleDateFormat("yyyy-MM-dd");
                arr[cont] = dt1.format(date);
                cont++;
            }
            st.close();
        } catch (SQLException e) {

        }
        return arr;
    }

    public static int[] GraficoPuntaje(String usuario) throws ParseException, SQLException {
        int tam = GraficoTamaño(usuario);

        int cont = 0;
        int arr2[] = new int[tam];
        Conexion c = new Conexion();
        Connection con = c.getConnection();
        try {
            Statement st;
            st = con.createStatement();
            ResultSet fechas = st.executeQuery("SELECT * FROM usuario INNER JOIN seguimiento ON usuario.id_usuario=seguimiento.usuario_id_usuario where usuario.usuario = '" + usuario + "' order by seguimiento.id_test asc");
            while (fechas.next()) {
                arr2[cont] = fechas.getInt("PUNTAJE");
                cont++;
            }
            st.close();
        } catch (SQLException e) {

        }
        return arr2;
    }

    public static int GraficoTamaño(String usuario) throws SQLException {

        int tam = 0;

        Conexion c = new Conexion();
        Connection con = c.getConnection();

        if (con != null) {
            Statement st;
            st = con.createStatement();
            ResultSet tamaño_consulta = st.executeQuery("SELECT count(id_test) FROM usuario INNER JOIN seguimiento ON usuario.id_usuario=seguimiento.usuario_id_usuario where usuario.usuario = '" + usuario + "' ");
            tamaño_consulta.next();
            tam = tamaño_consulta.getInt(1);
            st.close();
        }
        c.desconexion();

        return tam;
    }

    public static String StatusDarkMode(String usuario) throws SQLException {
        String tam = "";

        Conexion c = new Conexion();
        Connection con = c.getConnection();

        if (con != null) {
            Statement st;
            st = con.createStatement();
            ResultSet tamaño_consulta = st.executeQuery("SELECT * FROM usuario INNER JOIN preferencias ON usuario.id_usuario=preferencias.id_usuario_preferencia where usuario.usuario ='" + usuario + "'");
            while (tamaño_consulta.next()) {
                tam = tamaño_consulta.getString("modo_oscuro");
            }
            st.close();
        }
        c.desconexion();

        return tam;
    }

    public static boolean UpdateDarkMode(String status, int id) throws SQLException {

        boolean actualizado = false;

        Conexion c = new Conexion();
        Connection con = c.getConnection();

        if (con != null) {
            Statement st;
            st = con.createStatement();
            st.executeUpdate("Update preferencias Set modo_oscuro='" + status + "' Where id_usuario_preferencia='" + id + "'");
            actualizado = true;
            st.close();
        }
        c.desconexion();

        return actualizado;
    }

    public static int getID_Usuario(String usuario) throws SQLException {
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
        return id;
    }

    public static boolean CrearPreferencias(int id) throws SQLException {
        boolean agregado = false;
        Conexion c = new Conexion();
        Connection con = c.getConnection();

        if (con != null) {
            Statement st;
            st = con.createStatement();
            st.executeUpdate("Insert into preferencias (id_usuario_preferencia, modo_oscuro) values (" + id + ", 'OFF')");
            agregado = true;
            st.close();
        }
        c.desconexion();

        return agregado;
    }

    public static int[] ContadorRespuestas(String pregunta) throws SQLException {
        //A = Arreglo[1] B es el 2, C es el 3, D es el 4 y el contador es la posición 0.
        int tam, cont, A, B, C, D;
        int arr[] = new int[5];
        cont = 0;
        A = 0;
        B = 0;
        C = 0;
        D = 0;
        tam = 0;
        
        Conexion c = new Conexion();
        Connection con = c.getConnection();
        ResultSet rs = null;
        Statement st = con.createStatement();
        rs = st.executeQuery("SELECT * FROM usuario INNER JOIN seguimiento ON usuario.id_usuario=seguimiento.usuario_id_usuario INNER JOIN resp_pregunta ON seguimiento.id_test=resp_pregunta.seguimiento_id_test");

        if (rs != null) {
            while (rs.next()) {
                cont = 0;
                cont = rs.getInt("PREGUNTA"+pregunta);
                switch (cont) {
                    case 40:
                        A++;
                        break;
                    case 30:
                        B++;
                        break;
                    case 20:
                        C++;
                        break;
                    case 10:
                        D++;
                        break;
                    default:
                        break;
                }
                tam++;
            }
        }

        arr[0] = tam;
        arr[1] = A;
        arr[2] = B;
        arr[3] = C;
        arr[4] = D;
        
        return arr;
    }

}
