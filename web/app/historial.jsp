<%-- 
    Document   : historial
    Created on : 7/06/2020, 08:20:02 AM
    Author     : Esteban
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="BaseDeDatos.Conexion"%>
<%@page import="Servlets.Administracion"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Historial</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/style_historial.css">
        <!----Favicon---->
        <link rel="apple-touch-icon" sizes="180x180" href="../img/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="../img/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="../img/favicon-16x16.png">
        <link rel="manifest" href="${pageContext.request.contextPath}/img/site.webmanifest">
        <link rel="mask-icon" href="${pageContext.request.contextPath}/img/safari-pinned-tab.svg" color="#5bbad5">
        <meta name="msapplication-TileColor" content="#da532c">
        <meta name="theme-color" content="#ffffff">
    </head>

    <body>
        <%
            Conexion c = new Conexion();
            Connection con = c.getConnection();

            HttpSession sesion = request.getSession(false);
            String user = (String) sesion.getAttribute("username");
            int puntaje = 0;
            int puntaje2 = 0;
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
                    puntaje2 = usuarios.getInt("PUNTAJE2");
                }
                st.close();
            } catch (SQLException ex) {
                Logger.getLogger(Administracion.class.getName()).log(Level.SEVERE, null, ex);
            }

            String username = (String) session.getAttribute("username");
            String password = (String) session.getAttribute("password");

            if (username == null && password
                    == null) {
                response.sendRedirect("app/index.jsp");
            } else {

        %>
        <%                }
        %>
        <div class="navbar">
            <nav class="navbar navbar-light fixed-top">
                <a class=" navbar-brand mx-auto" href="#">VISUALIZATE</a>
                <a href="../login/sign_in.jsp" class="btn btn-sign_out">
                    <i class="fas fa-sign-out-alt"></i>Cerrar Sesión</a>
            </nav>
        </div>
        <div class="container">
            <div class="main-title text-center w-100">
                <h1>Historial</h1>
                <hr>
            </div>
            <div class="container-text text-center w-100">
                <p>Hola <span class="username"><%=username%></span> aquí tendremos tus últimos resultados de los test realizados
                    y te
                    diremos como vas!</p>
            </div>
            <div class="container-test1 text-center w-100">
                <h2>Prueba N1</h2>
                <div class="container-score mx-auto">
                    <i class="fas fa-star"></i><div><%=puntaje%></div>
                </div>
            </div>
            <div class="container-test2 text-center w-100">
                <h2>Prueba N2</h2>
                <div class="container-score mx-auto">
                    <i class="fas fa-star"></i><div><%=puntaje2%></div>
                </div>
                <%
                    int diferencia = (puntaje2 - puntaje);
                    if (diferencia > 0 && puntaje2 != 0) {


                %>
                <p class="text-center w-100">
                    Que bien, has mejorado gracias a las recomendaciones que te hemos dado!
                    Tuviste una mejoría de <%=diferencia%> con respecto al anterior test </p>
                    <%                } else if (diferencia < 0 && puntaje2 != 0) {

                    %>
                <p class="text-center w-100">
                    Oh no! Estas peor que cuando hiciste nuestra prueba, por favor intenta nuevamente
                    seguir con los ejercicios que tenemos para ti.</p>
                    <%                } else {

                    %>
            </div>
            <p class="test text-center w-100">Tienes que realizar los dos tests para que te digamos como vas!</p>
            <%}%>
            
            <div class="d-flex justify-content-center">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/app/index.jsp">Continuar</a>
            </div>
        </div>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
                integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/7adac5a862.js" crossorigin="anonymous"></script>
    </body>

</html>
