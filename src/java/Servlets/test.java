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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Esteban
 */
public class test extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet test</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet test at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String pagina = request.getParameter("pagina");

        if (pagina.equals("test")) {

            HttpSession sesion = request.getSession(false);
            String user = (String) sesion.getAttribute("username");
            int id = 0;
            int contador=0;
            try {
                
                Conexion c = new Conexion();
                Connection con = c.getConnection();
                ResultSet rs = null;
                Statement st = con.createStatement();   
                rs = st.executeQuery("select id_usuario from Usuario where usuario='"+user+"'");

                if (rs != null) {
                    while (rs.next()) {
                        id = rs.getInt(1);
                    }

                }
                /*
                id = ActualizarModificarEliminar.ObtenerID(user);*/
            } catch (SQLException ex) {
                Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, ex);
            }

            int puntaje = 0;
            String respuesta1 = request.getParameter("respuesta-p1");
            String respuesta2 = request.getParameter("respuesta-p2");
            String respuesta3 = request.getParameter("respuesta-p3");
            String respuesta4 = request.getParameter("respuesta-p4");
            String respuesta5 = request.getParameter("respuesta-p5");
            String respuesta6 = request.getParameter("respuesta-p6");
            String respuesta7 = request.getParameter("respuesta-p7");
            String respuesta8 = request.getParameter("respuesta-p8");
            String respuesta9 = request.getParameter("respuesta-p9");
            String respuesta10 = request.getParameter("respuesta-p10");

            int irespuesta1;
            int irespuesta2;
            int irespuesta3;
            int irespuesta4;
            int irespuesta5;
            int irespuesta6;
            int irespuesta7;
            int irespuesta8;
            int irespuesta9;
            int irespuesta10;

            if (respuesta1.equals("A")) {
                puntaje = puntaje + 40;
                irespuesta1 = 40;
            } else if (respuesta1.equals("B")) {
                puntaje = puntaje + 30;
                irespuesta1 = 30;
            } else if (respuesta1.equals("C")) {
                puntaje = puntaje + 20;
                irespuesta1 = 20;
            } else {
                puntaje = puntaje + 10;
                irespuesta1 = 10;
            }

            if (respuesta2.equals("A")) {
                puntaje = puntaje + 40;
                irespuesta2 = 40;
            } else if (respuesta2.equals("B")) {
                puntaje = puntaje + 30;
                irespuesta2 = 30;
            } else if (respuesta2.equals("C")) {
                puntaje = puntaje + 20;
                irespuesta2 = 20;
            } else {
                puntaje = puntaje + 10;
                irespuesta2 = 10;
            }

            if (respuesta3.equals("A")) {
                puntaje = puntaje + 40;
                irespuesta3 = 40;
            } else if (respuesta3.equals("B")) {
                puntaje = puntaje + 30;
                irespuesta3 = 30;
            } else if (respuesta3.equals("C")) {
                puntaje = puntaje + 20;
                irespuesta3 = 20;
            } else {
                puntaje = puntaje + 10;
                irespuesta3 = 10;
            }

            if (respuesta4.equals("A")) {
                puntaje = puntaje + 40;
                irespuesta4 = 40;
            } else if (respuesta4.equals("B")) {
                puntaje = puntaje + 30;
                irespuesta4 = 30;
            } else if (respuesta4.equals("C")) {
                puntaje = puntaje + 20;
                irespuesta4 = 20;
            } else {
                puntaje = puntaje + 10;
                irespuesta4 = 10;
            }

            if (respuesta5.equals("A")) {
                puntaje = puntaje + 40;
                irespuesta5 = 40;
            } else if (respuesta5.equals("B")) {
                puntaje = puntaje + 30;
                irespuesta5 = 30;
            } else if (respuesta5.equals("C")) {
                puntaje = puntaje + 20;
                irespuesta5 = 20;
            } else {
                puntaje = puntaje + 10;
                irespuesta5 = 10;
            }

            if (respuesta6.equals("A")) {
                puntaje = puntaje + 40;
                irespuesta6 = 40;
            } else if (respuesta6.equals("B")) {
                puntaje = puntaje + 30;
                irespuesta6 = 30;
            } else if (respuesta6.equals("C")) {
                puntaje = puntaje + 20;
                irespuesta6 = 20;
            } else {
                puntaje = puntaje + 10;
                irespuesta6 = 10;
            }

            if (respuesta7.equals("A")) {
                puntaje = puntaje + 40;
                irespuesta7 = 40;
            } else if (respuesta7.equals("B")) {
                puntaje = puntaje + 30;
                irespuesta7 = 30;
            } else if (respuesta7.equals("C")) {
                puntaje = puntaje + 20;
                irespuesta7 = 20;
            } else {
                puntaje = puntaje + 10;
                irespuesta7 = 10;
            }

            if (respuesta8.equals("A")) {
                puntaje = puntaje + 40;
                irespuesta8 = 40;
            } else if (respuesta8.equals("B")) {
                puntaje = puntaje + 30;
                irespuesta8 = 30;
            } else if (respuesta8.equals("C")) {
                puntaje = puntaje + 20;
                irespuesta8 = 20;
            } else {
                puntaje = puntaje + 10;
                irespuesta8 = 10;
            }

            if (respuesta9.equals("A")) {
                puntaje = puntaje + 40;
                irespuesta9 = 40;
            } else if (respuesta9.equals("B")) {
                puntaje = puntaje + 30;
                irespuesta9 = 30;
            } else if (respuesta9.equals("C")) {
                puntaje = puntaje + 20;
                irespuesta9 = 20;
            } else {
                puntaje = puntaje + 10;
                irespuesta9 = 10;
            }

            if (respuesta10.equals("A")) {
                puntaje = puntaje + 40;
                irespuesta10 = 40;
            } else if (respuesta10.equals("B")) {
                puntaje = puntaje + 30;
                irespuesta10 = 30;
            } else if (respuesta10.equals("C")) {
                puntaje = puntaje + 20;
                irespuesta10 = 20;
            } else {
                puntaje = puntaje + 10;
                irespuesta10 = 10;
            }

            sesion.setAttribute("puntaje", puntaje);
            sesion.setAttribute("id", id);

            boolean sw = false;
            boolean sw2 = false;
            
            try {
                sw = ActualizarModificarEliminar.InsertarPuntajeTest(id, user, puntaje);
                
                Conexion c = new Conexion();
                Connection con = c.getConnection();
                ResultSet rs = null;
                Statement st = con.createStatement();   
                rs = st.executeQuery("Select count(id_test) from seguimiento");

                if (rs != null) {
                    while (rs.next()) {
                        contador = rs.getInt(1);
                    }

                }
                
                sw2 = ActualizarModificarEliminar.InsertarRespuestasTest(contador, irespuesta1, irespuesta2, irespuesta3, irespuesta4, irespuesta5, irespuesta6, irespuesta7, irespuesta8, irespuesta9, irespuesta10);
            } catch (SQLException ex) {
                Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, ex);
            }

            if (sw) {
                /*
                RequestDispatcher desparchador = request.getRequestDispatcher("webPage/index.html");
                desparchador.forward(request, response);*/
                PrintWriter out = response.getWriter();
                out.println("Perfectisisisisisimo " + user + " " + puntaje);
            } else {
                PrintWriter out = response.getWriter();
                out.println("Si estas viendo este mensaje es por que algo salio mal, no se pudo completar tu solicitud. Lamentablesisisisisimo" + user + " " + puntaje);
            }

            /*PrintWriter out = response.getWriter();
            out.println("El usuario"+puntaje);*/
            RequestDispatcher despachador = request.getRequestDispatcher("app/resultado_test.jsp");
            despachador.forward(request, response);

        } else if (pagina.equals("signout")) {

            HttpSession sesion = request.getSession(false);
            sesion.removeAttribute("username");
            sesion.removeAttribute("password");
            sesion.removeAttribute("puntaje");
            sesion.invalidate();

            response.sendRedirect("login/sign_in.jsp");

        } else if (pagina.equals("pre_recomendaciones")) {

            HttpSession sesion = request.getSession(false);
            String user = (String) sesion.getAttribute("username");

            Conexion c = new Conexion();
            Connection con = c.getConnection();

            int puntaje = 0;

            String nombre, nombre_usuario, contraseña, correo, genero, fecha_nacimiento;

            try {

                Statement st;
                st = con.createStatement();
                ResultSet usuarios = st.executeQuery("Select * from USUARIO where nombre_usuario='" + user + "'");
                while (usuarios.next()) {

                    //id = usuario.getInt("");
                    nombre = usuarios.getString("NOMBRE");
                    nombre_usuario = usuarios.getString("NOMBRE_USUARIO");
                    contraseña = usuarios.getString("CONTRASEÑA");
                    correo = usuarios.getString("CORREO");
                    genero = usuarios.getString("GENERO");
                    fecha_nacimiento = usuarios.getString("FECHA_NACIMIENTO").split(" ")[0];
                    puntaje = usuarios.getInt("PUNTAJE");

                }
                st.close();
            } catch (SQLException ex) {
                Logger.getLogger(Administracion.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (puntaje == 0) {
                PrintWriter out = response.getWriter();
                out.println("¡ Para que presentemos recomendaciones personalizadas primero tienes que realizar el test !");
            } else if (puntaje < 133) { // Bajo
                RequestDispatcher despachador = request.getRequestDispatcher("app/exercises/index_2.jsp");
                despachador.forward(request, response);
            } else if (puntaje > 133 && puntaje < 266) { //Medio
                RequestDispatcher despachador = request.getRequestDispatcher("app/exercises/index_1.jsp");
                despachador.forward(request, response);

            } else if (puntaje > 266) { // Alto
                RequestDispatcher despachador = request.getRequestDispatcher("app/exercises/index.jsp");
                despachador.forward(request, response);
            }

        } else if (pagina.equals("test_2")) {

            int puntaje = 0;
            String respuesta1 = request.getParameter("respuesta-p1");
            String respuesta2 = request.getParameter("respuesta-p2");
            String respuesta3 = request.getParameter("respuesta-p3");
            String respuesta4 = request.getParameter("respuesta-p4");
            String respuesta5 = request.getParameter("respuesta-p5");
            String respuesta6 = request.getParameter("respuesta-p6");
            String respuesta7 = request.getParameter("respuesta-p7");
            String respuesta8 = request.getParameter("respuesta-p8");
            String respuesta9 = request.getParameter("respuesta-p9");
            String respuesta10 = request.getParameter("respuesta-p10");

            if (respuesta1.equals("A")) {
                puntaje = puntaje + 40;
            } else if (respuesta1.equals("B")) {

                puntaje = puntaje + 30;
            } else if (respuesta1.equals("C")) {
                puntaje = puntaje + 20;
            } else {
                puntaje = puntaje + 10;
            }

            if (respuesta2.equals("A")) {
                puntaje = puntaje + 40;
            } else if (respuesta2.equals("B")) {
                puntaje = puntaje + 30;
            } else if (respuesta2.equals("C")) {
                puntaje = puntaje + 20;
            } else {
                puntaje = puntaje + 10;
            }

            if (respuesta3.equals("A")) {
                puntaje = puntaje + 40;
            } else if (respuesta3.equals("B")) {
                puntaje = puntaje + 30;
            } else if (respuesta3.equals("C")) {
                puntaje = puntaje + 20;
            } else {
                puntaje = puntaje + 10;
            }

            if (respuesta4.equals("A")) {
                puntaje = puntaje + 40;
            } else if (respuesta4.equals("B")) {
                puntaje = puntaje + 30;
            } else if (respuesta4.equals("C")) {
                puntaje = puntaje + 20;
            } else {
                puntaje = puntaje + 10;
            }

            if (respuesta5.equals("A")) {
                puntaje = puntaje + 40;
            } else if (respuesta5.equals("B")) {
                puntaje = puntaje + 30;
            } else if (respuesta5.equals("C")) {
                puntaje = puntaje + 20;
            } else {
                puntaje = puntaje + 10;
            }

            if (respuesta6.equals("A")) {
                puntaje = puntaje + 40;
            } else if (respuesta6.equals("B")) {
                puntaje = puntaje + 30;
            } else if (respuesta6.equals("C")) {
                puntaje = puntaje + 20;
            } else {
                puntaje = puntaje + 10;
            }

            if (respuesta7.equals("A")) {
                puntaje = puntaje + 40;
            } else if (respuesta7.equals("B")) {
                puntaje = puntaje + 30;
            } else if (respuesta7.equals("C")) {
                puntaje = puntaje + 20;
            } else {
                puntaje = puntaje + 10;
            }

            if (respuesta8.equals("A")) {
                puntaje = puntaje + 40;
            } else if (respuesta8.equals("B")) {
                puntaje = puntaje + 30;
            } else if (respuesta8.equals("C")) {
                puntaje = puntaje + 20;
            } else {
                puntaje = puntaje + 10;
            }

            if (respuesta9.equals("A")) {
                puntaje = puntaje + 40;
            } else if (respuesta9.equals("B")) {
                puntaje = puntaje + 30;
            } else if (respuesta9.equals("C")) {
                puntaje = puntaje + 20;
            } else {
                puntaje = puntaje + 10;
            }

            if (respuesta10.equals("A")) {
                puntaje = puntaje + 40;
            } else if (respuesta10.equals("B")) {
                puntaje = puntaje + 30;
            } else if (respuesta10.equals("C")) {
                puntaje = puntaje + 20;
            } else {
                puntaje = puntaje + 10;
            }

            HttpSession sesion = request.getSession(false);
            sesion.setAttribute("puntaje2", puntaje);
            String user = (String) sesion.getAttribute("username");

            boolean sw = false;

            try {
                sw = ActualizarModificarEliminar.ActualizarElPuntaje2(user, puntaje);
            } catch (SQLException ex) {
                Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, ex);
            }

            if (sw) {
                /*
                RequestDispatcher desparchador = request.getRequestDispatcher("webPage/index.html");
                desparchador.forward(request, response);*/
                PrintWriter out = response.getWriter();
                out.println("Perfectisisisisisimo " + user + " " + puntaje);
            } else {
                PrintWriter out = response.getWriter();
                out.println("Si estas viendo este mensaje es por que algo salio mal, no se pudo completar tu solicitud. Lamentablesisisisisimo" + user + " " + puntaje);
            }

            /*PrintWriter out = response.getWriter();
            out.println("El usuario"+puntaje);*/
            RequestDispatcher despachador = request.getRequestDispatcher("app/resultado_test2.jsp");
            despachador.forward(request, response);

        } else {
            PrintWriter out = response.getWriter();
            out.println("Algo no funcinó correctamente");

        }

    }
}
/**
 * Returns a short description of the servlet.
 *
 * @return a String containing servlet description
 */
