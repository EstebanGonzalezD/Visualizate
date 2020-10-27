package Servlets;

import BaseDeDatos.Conexion;
import Entidades.ActualizarModificarEliminar;
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

//Librerias para el correo.
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

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
                        ResultSet resultado = st.executeQuery("Select count(*) as usuarios from Usuario where nombre_usuario='" + ParamUsuario + "'");
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
                    enviarCorreo(ParamCorreo);
                } else {
                    PrintWriter out = response.getWriter();
                    out.println("Si estas viendo este mensaje es por que algo salio mal, no se pudo completar tu solicitud. " + nombre + ParamContraseña + ParamCorreo + ParamFecha + ParamGenero + ParamUsuario);
                }
            } else {
                PrintWriter out = response.getWriter();
                out.println("El usuario que intentaste registrar, ya se encuentra registrado " + cont);
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
                boolean dark_mode = false;
                request.setAttribute("status_dm", dark_mode);

                RequestDispatcher despachador = request.getRequestDispatcher("app/index.jsp");
                despachador.forward(request, response);
            } else {
                PrintWriter out = response.getWriter();
                out.println("No iniciamos sesión, que depresión ");
            }
            
        } else if (pagina.equals("invitado_cont")) {
            boolean sw = false;
            sw = ActualizarModificarEliminar.ContadorVisitas();
            
            
            if (sw) {
                RequestDispatcher despachador = request.getRequestDispatcher("app/invited.jsp");
                despachador.forward(request, response);
            }else{
                RequestDispatcher despachador = request.getRequestDispatcher("app/index.jsp");
                despachador.forward(request, response);
            }
        }

    }

    public boolean enviarCorreo(String para) {
        String de = "visualizateqa@gmail.com";
        String clave = "yLt2*62s";
        String asunto = "¡Bienvenido a Visualízate!";
        String mensaje = "Te has registrado correctamente. Ahora puedes acceder a todos los beneficios personalizados.";
        boolean enviado = false;

        try {

            String host = "smtp.gmail.com";

            Properties prop = System.getProperties();

            prop.put("mail.smtp.starttls.enable", "true");
            prop.put("mail.smtp.host", host);
            prop.put("mail.smtp.user", de);
            prop.put("mail.smtp.password", clave);
            prop.put("mail.smtp.port", 587);
            prop.put("mail.smtp.auth", "true");

            Session sesion = Session.getDefaultInstance(prop, null);

            MimeMessage message = new MimeMessage(sesion);

            message.setFrom(new InternetAddress(de));

            /*
                    
                    NOTA: para enviar correo electronico masivo
                
                    InternetAddress[] direcciones = new InternetAddress[para.length];
                    for(int i=0;i<para.length;i++){
                        direcciones[i] = new InternetAddress(para[i]);
                    }
                
                    for(int i=0;i<direcciones.length;i++){
                        message.addRecipient(Message.RecipientType.TO, direcciones[i]);
                    }
                
             */
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(para));

            message.setSubject(asunto);
            message.setText(mensaje);

            Transport transport = sesion.getTransport("smtp");

            transport.connect(host, de, clave);

            transport.sendMessage(message, message.getAllRecipients());

            transport.close();

            enviado = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return enviado;
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
