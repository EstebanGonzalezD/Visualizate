/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import BaseDeDatos.Conexion;
import Entidades.Procedimientos;
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
import javax.servlet.http.HttpSession;
import Entidades.Procedimientos;

/**
 *
 * @author Esteban
 */
public class Lobby extends HttpServlet {

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
            out.println("<title>Servlet Lobby</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Lobby at " + request.getContextPath() + "</h1>");
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

        if (pagina.equals("pre_test")) {

            Conexion c = new Conexion();
            Connection con = c.getConnection();

            HttpSession sesion = request.getSession(false);
            String user = (String) sesion.getAttribute("username");
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
                RequestDispatcher despachador = request.getRequestDispatcher("app/test.jsp");
                despachador.forward(request, response);
            } else {
                RequestDispatcher despachador = request.getRequestDispatcher("app/test2.jsp");
                despachador.forward(request, response);
            }

        } else if (pagina.equals("Dark-mode")) {
            
            HttpSession sesion = request.getSession(false);
            String dark_mode = (String) sesion.getAttribute("dark_mode");
            int id = (Integer) sesion.getAttribute("id");
            
            if(dark_mode.equals("OFF")){
                dark_mode = "ON";
            }else if(dark_mode.equals("ON")){
                dark_mode= "OFF";
            }
            
            try {
                boolean sw = Procedimientos.UpdateDarkMode(dark_mode, id);
                if(sw){
                    sesion.setAttribute("dark_mode", dark_mode);
                }
            } catch (SQLException ex) {
                Logger.getLogger(Lobby.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            RequestDispatcher despachador = request.getRequestDispatcher("app/index.jsp");
            despachador.forward(request, response);
        
        } else if(pagina.equals("invitado-back")) {
            HttpSession session = request.getSession(false);
            String user = (String) session.getAttribute("username");
            String password = (String) session.getAttribute("password");
            
            if (user == null && password
                    == null) {
                RequestDispatcher despachador = request.getRequestDispatcher("app/invited.jsp");
                despachador.forward(request, response);
            } else{
                RequestDispatcher despachador = request.getRequestDispatcher("app/index.jsp");
                despachador.forward(request, response);
            }
                
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
