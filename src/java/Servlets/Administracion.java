/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import BaseDeDatos.Conexion;
import Entidades.ActualizarModificarEliminar;
import Entidades.CrearUsuario;
import Entidades.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Administracion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Administracion</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Administracion at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.println("Inicia Sesión como administrador para poder acceder a el apartado de Administración.");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String pagina = request.getParameter("pagina");
        if (pagina.equals("admin")) {
            String password = request.getParameter("admin_pass");
            if (password.equals("12345")) {

                Conexion c = new Conexion();
                Connection con = c.getConnection();

                ArrayList<Usuario> array_usuarios = new ArrayList<Usuario>();

                String nombre, nombre_usuario, contraseña, correo, genero, fecha_nacimiento;
                int puntaje;

                try {

                    Statement st;
                    st = con.createStatement();
                    ResultSet usuario = st.executeQuery("Select * from USUARIO");
                    while (usuario.next()) {

                        //id = usuario.getInt("");
                        nombre = usuario.getString("NOMBRE");
                        nombre_usuario = usuario.getString("NOMBRE_USUARIO");
                        contraseña = usuario.getString("CONTRASEÑA");
                        correo = usuario.getString("CORREO");
                        genero = usuario.getString("GENERO");
                        fecha_nacimiento = usuario.getString("FECHA_NACIMIENTO").split(" ")[0];
                        puntaje = usuario.getInt("PUNTAJE");

                        array_usuarios.add(new Usuario(nombre, nombre_usuario, contraseña, correo, genero, fecha_nacimiento, puntaje));

                    }
                    st.close();
                } catch (SQLException ex) {
                    Logger.getLogger(Administracion.class.getName()).log(Level.SEVERE, null, ex);
                }

                request.setAttribute("usuarios", array_usuarios);
                RequestDispatcher despachador = request.getRequestDispatcher("app/administracion.jsp");
                despachador.forward(request, response);
            } else {
                PrintWriter out = response.getWriter();
                out.println("Usuario o contraseña incorrectos.");
            }

        } else if (pagina.equals("Agregar_Usuario")) {

            String ParamNombre = request.getParameter("nombre");
            String ParamUsuario = request.getParameter("usuario");
            String ParamContraseña = request.getParameter("password");
            String ParamCorreo = request.getParameter("correo");
            String ParamFecha = request.getParameter("fecha");
            String ParamGenero = request.getParameter("genero");

            Usuario usuario = new Usuario(ParamNombre, ParamUsuario, ParamContraseña, ParamCorreo, ParamGenero, ParamFecha, 0);

            boolean sw = false;

            try {
                sw = CrearUsuario.agregarUsuario(usuario);
            } catch (SQLException ex) {
                Logger.getLogger(ServletRegistro.class.getName()).log(Level.SEVERE, null, ex);
            }

            if (sw) {
                Conexion c = new Conexion();
                Connection con = c.getConnection();

                ArrayList<Usuario> array_usuarios = new ArrayList<Usuario>();

                String nombre, nombre_usuario, contraseña, correo, genero, fecha_nacimiento;
                int puntaje;

                try {

                    Statement st;
                    st = con.createStatement();
                    ResultSet usuarios = st.executeQuery("Select * from USUARIO");
                    while (usuarios.next()) {

                        //id = usuario.getInt("");
                        nombre = usuarios.getString("NOMBRE");
                        nombre_usuario = usuarios.getString("NOMBRE_USUARIO");
                        contraseña = usuarios.getString("CONTRASEÑA");
                        correo = usuarios.getString("CORREO");
                        genero = usuarios.getString("GENERO");
                        fecha_nacimiento = usuarios.getString("FECHA_NACIMIENTO").split(" ")[0];
                        puntaje = usuarios.getInt("PUNTAJE");

                        array_usuarios.add(new Usuario(nombre, nombre_usuario, contraseña, correo, genero, fecha_nacimiento, puntaje));

                    }
                    st.close();
                } catch (SQLException ex) {
                    Logger.getLogger(Administracion.class.getName()).log(Level.SEVERE, null, ex);
                }

                request.setAttribute("usuarios", array_usuarios);
                RequestDispatcher despachador = request.getRequestDispatcher("app/administracion.jsp");
                despachador.forward(request, response);

            } else {
                PrintWriter out = response.getWriter();
                out.println("Si estas viendo este mensaje es por que algo salio mal, no se pudo completar tu solicitud." + ParamNombre + " " + ParamUsuario + " " + ParamContraseña + " " + ParamCorreo + " " + ParamFecha + " " + ParamGenero);
            }

        } else if (pagina.equals("Eliminar_Usuario")) {

            String ParamUsuario = request.getParameter("usuario");

            boolean sw = false;

            try {
                sw = ActualizarModificarEliminar.EliminarUsuario(ParamUsuario);
            } catch (SQLException ex) {
                Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, ex);
            }

            if (sw) {
                Conexion c = new Conexion();
                Connection con = c.getConnection();

                ArrayList<Usuario> array_usuarios = new ArrayList<Usuario>();

                String nombre, nombre_usuario, contraseña, correo, genero, fecha_nacimiento;
                int puntaje;

                try {

                    Statement st;
                    st = con.createStatement();
                    ResultSet usuarios = st.executeQuery("Select * from USUARIO");
                    while (usuarios.next()) {

                        //id = usuario.getInt("");
                        nombre = usuarios.getString("NOMBRE");
                        nombre_usuario = usuarios.getString("NOMBRE_USUARIO");
                        contraseña = usuarios.getString("CONTRASEÑA");
                        correo = usuarios.getString("CORREO");
                        genero = usuarios.getString("GENERO");
                        fecha_nacimiento = usuarios.getString("FECHA_NACIMIENTO").split(" ")[0];
                        puntaje = usuarios.getInt("PUNTAJE");

                        array_usuarios.add(new Usuario(nombre, nombre_usuario, contraseña, correo, genero, fecha_nacimiento, puntaje));

                    }
                    st.close();
                } catch (SQLException ex) {
                    Logger.getLogger(Administracion.class.getName()).log(Level.SEVERE, null, ex);
                }

                request.setAttribute("usuarios", array_usuarios);
                RequestDispatcher despachador = request.getRequestDispatcher("app/administracion.jsp");
                despachador.forward(request, response);
            } else {
                PrintWriter out = response.getWriter();
                out.println("Si estas viendo este mensaje es por que algo salio mal, no se pudo completar tu solicitud.");
            }

        } else if (pagina.equals("Actualizar_Usuario")) {

            String ParamUsuario = request.getParameter("usuario");
            String ParamCorreo = request.getParameter("correo");

            boolean sw = false;

            try {
                sw = ActualizarModificarEliminar.ActualizarElCorreo(ParamUsuario, ParamCorreo);
            } catch (SQLException ex) {
                Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, ex);
            }

            if (sw) {
                Conexion c = new Conexion();
                Connection con = c.getConnection();

                ArrayList<Usuario> array_usuarios = new ArrayList<Usuario>();

                String nombre, nombre_usuario, contraseña, correo, genero, fecha_nacimiento;
                int puntaje;

                try {

                    Statement st;
                    st = con.createStatement();
                    ResultSet usuarios = st.executeQuery("Select * from USUARIO");
                    while (usuarios.next()) {

                        //id = usuario.getInt("");
                        nombre = usuarios.getString("NOMBRE");
                        nombre_usuario = usuarios.getString("NOMBRE_USUARIO");
                        contraseña = usuarios.getString("CONTRASEÑA");
                        correo = usuarios.getString("CORREO");
                        genero = usuarios.getString("GENERO");
                        fecha_nacimiento = usuarios.getString("FECHA_NACIMIENTO").split(" ")[0];
                        puntaje = usuarios.getInt("PUNTAJE");

                        array_usuarios.add(new Usuario(nombre, nombre_usuario, contraseña, correo, genero, fecha_nacimiento, puntaje));

                    }
                    st.close();
                } catch (SQLException ex) {
                    Logger.getLogger(Administracion.class.getName()).log(Level.SEVERE, null, ex);
                }

                request.setAttribute("usuarios", array_usuarios);
                RequestDispatcher despachador = request.getRequestDispatcher("app/administracion.jsp");
                despachador.forward(request, response);

            }

        } else if (pagina.equals("Buscar_Usuario")) {
            String ParamUsuario = request.getParameter("usuario");

            boolean sw = false;

            try {
                sw = ActualizarModificarEliminar.BuscarUsuario(ParamUsuario);
            } catch (SQLException ex) {
                Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, ex);
            }

            if (sw) {
                Conexion c = new Conexion();
                Connection con = c.getConnection();

                ArrayList<Usuario> array_usuarios = new ArrayList<Usuario>();

                String nombre, nombre_usuario, contraseña, correo, genero, fecha_nacimiento;
                int puntaje;

                try {

                    Statement st;
                    st = con.createStatement();
                    ResultSet usuarios = st.executeQuery("Select * from USUARIO where nombre_usuario='"+ParamUsuario+"'");
                    while (usuarios.next()) {

                        //id = usuario.getInt("");
                        nombre = usuarios.getString("NOMBRE");
                        nombre_usuario = usuarios.getString("NOMBRE_USUARIO");
                        contraseña = usuarios.getString("CONTRASEÑA");
                        correo = usuarios.getString("CORREO");
                        genero = usuarios.getString("GENERO");
                        fecha_nacimiento = usuarios.getString("FECHA_NACIMIENTO").split(" ")[0];
                        puntaje = usuarios.getInt("PUNTAJE");

                        array_usuarios.add(new Usuario(nombre, nombre_usuario, contraseña, correo, genero, fecha_nacimiento, puntaje));

                    }
                    st.close();
                } catch (SQLException ex) {
                    Logger.getLogger(Administracion.class.getName()).log(Level.SEVERE, null, ex);
                }

                request.setAttribute("usuarios", array_usuarios);
                RequestDispatcher despachador = request.getRequestDispatcher("app/administracion.jsp");
                despachador.forward(request, response);
            }
        } else {
            PrintWriter out = response.getWriter();
            out.println("Inicia Sesión como administrador para poder acceder a el apartado de Administración.");
        }

    }
}
