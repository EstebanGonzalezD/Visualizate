package Servlets;

import BaseDeDatos.Conexion;
import Entidades.CrearUsuario;
import Entidades.IniciarSesion;
import Entidades.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ServletRegistro extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletRegistro</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletRegistro at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        /*
        String pagina = request.getParameter("pagina");

        if (pagina.equals("inicio")) {
            String ParamNombre = request.getParameter("nombre");
            String ParamContraseña = request.getParameter("contraseñaa");

            boolean sw = false;
            
            try {
                sw = IniciarSesion.Login(ParamNombre, ParamContraseña);
            } catch (SQLException ex) {
                Logger.getLogger(ServletRegistro.class.getName()).log(Level.SEVERE, null, ex);
            }

            if (sw) {
                PrintWriter out = response.getWriter();
                out.println("Has iniciado sesión correctamente");
            } else {
                PrintWriter out = response.getWriter();
                out.println("No iniciamos sesión, que depresión");
            }
        }else {
            processRequest(request, response);
        }
         */
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String pagina = request.getParameter("pagina");

        if (pagina.equals("registro")) {

            String ParamNombre = request.getParameter("nombre");
            String ParamApellidos = request.getParameter("apellidos");
            String nombre = ParamNombre + " " + ParamApellidos;
            String ParamUsuario = request.getParameter("username");
            String ParamContraseña = request.getParameter("password");
            String ParamCorreo = request.getParameter("correo");
            String ParamFecha = request.getParameter("fecha");
            String ParamGenero = request.getParameter("customRadioInline1");

            String fecha = request.getParameter("date");

            Conexion c = new Conexion();
            Connection con = c.getConnection();
           
            int cont = 0;
            if (con != null) {
                Statement st;
                try {
                    st = con.createStatement();
                    try {
                        ResultSet resultado = st.executeQuery("Select count(*) as usuarios from Usuario where nombre_usuario='"+ParamUsuario +"'");
                        resultado.next();
                        cont = resultado.getInt("usuarios");
                    } catch (SQLException ex) {
                        Logger.getLogger(ServletRegistro.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    st.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ServletRegistro.class.getName()).log(Level.SEVERE, null, ex);
                }

            }

            c.desconexion();
            if (cont == 0) {
                Usuario usuario = new Usuario(nombre, ParamUsuario, ParamContraseña, ParamCorreo, ParamGenero, ParamFecha, 0);

                boolean sw = false;

                try {
                    sw = CrearUsuario.agregarUsuario(usuario);
                } catch (SQLException ex) {
                    Logger.getLogger(ServletRegistro.class.getName()).log(Level.SEVERE, null, ex);
                }

                if (sw) {
                                        RequestDispatcher despachador = request.getRequestDispatcher("login/sign_in.jsp");
                    despachador.forward(request, response);
                } else {
                    PrintWriter out = response.getWriter();
                    out.println("Si estas viendo este mensaje es por que algo salio mal, no se pudo completar tu solicitud. " + nombre + ParamContraseña + ParamCorreo + ParamFecha + ParamGenero + ParamUsuario);
                }
            } else {
                PrintWriter out = response.getWriter();
                out.println("El usuario que intentaste registrar, ya se encuentra registrado "+cont);
            }
        } else if (pagina.equals("inicio")) {
            String ParamNombre = request.getParameter("username");
            String ParamContraseña = request.getParameter("password");

            HttpSession sesion = request.getSession();

            sesion.setAttribute("username", ParamNombre);
            sesion.setAttribute("password", ParamContraseña);

            boolean sw = false;
            try {
                sw = IniciarSesion.Login(ParamNombre, ParamContraseña);
            } catch (SQLException ex) {
                Logger.getLogger(ServletRegistro.class.getName()).log(Level.SEVERE, null, ex);
            }

            if (sw) {
                RequestDispatcher despachador = request.getRequestDispatcher("app/index.jsp");
                despachador.forward(request, response);
            } else {
                PrintWriter out = response.getWriter();
                out.println("No iniciamos sesión, que depresión ");
            }
        } else {
            processRequest(request, response);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
