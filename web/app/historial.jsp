<%-- 
    Document   : historial
    Created on : 7/06/2020, 08:20:02 AM
    Author     : Esteban
--%>

<%@page import="Entidades.Procedimientos"%>
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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/styles-dark-mode.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.js"></script>
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
            HttpSession sesion = request.getSession(false);
            String user = (String) sesion.getAttribute("username"); 
            String username = (String) session.getAttribute("username");
            String password = (String) session.getAttribute("password");
            
            if (username == null && password
                    == null) {
                response.sendRedirect("app/index.jsp");
            } else {

        %>
        <%                }
        %>

            <nav class="navbar navbar-light">
                <a class=" navbar-brand mx-auto" href="${pageContext.request.contextPath}/app/index.jsp">VISUALIZATE</a>
                <a href="../login/sign_in.jsp" class="btn btn-sign_out">
                    <i class="fas fa-sign-out-alt"></i>Cerrar Sesión</a>
            </nav>

                <%
            try {

                String dark_mode = (String) sesion.getAttribute("dark_mode");

                if (dark_mode.equals("ON")) {
        %>
        <script>
            document.documentElement.classList.toggle('dark-mode');
        </script>

        <%      } else if (dark_mode.equals("OFF")) {

        %>
        <script>
            document.documentElement.classList.toggle('dark-mode-off');
        </script>

        <%                }
            } catch (Exception e) {
            }
        %>
        <div class="container">
            <div class="main-title text-center w-100">
                <h1>Historial</h1>
                <hr>
            </div>
            <div class="container-text text-center w-100">
                <p>Hola <span class="username"><%=username%></span> para nosotros es muy importante que estes informado de todos tus resultados,
                   nos preocupa saber que puedas tener algún percance en tu salud. Por esto guardamos todos sus resultados para que pueda revisarlos
                   en cualquier momento y analizar por ti mismo si has mejorado o si debes continuar usando ejercicios o productos!</p>
            </div>
            <div style="width: 600px; margin: auto; margin-top:60px;">
                <canvas id="myChart"></canvas>
        <!--        
            </div>
                   <hr>
                    <div style=" width: 700px; margin: auto; margin-top: 70px;">
                        <table class="table">
            <thead class="thead-dark">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Fecha</th>
                <th scope="col">Puntaje</th>

              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>Otto</td>

              </tr>
              <tr>
                <th scope="row">2</th>
                <td>Jacob</td>
                <td>Thornton</td>

              </tr>
              <tr>
                <th scope="row">3</th>
                <td>Larry</td>
                <td>the Bird</td>

              </tr>
            </tbody>
        </table>
        -->
                    </div>     
        </div>
        
        <div style="margin-top: 30px; margin-bottom: 30px;" class="d-flex justify-content-center">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/app/index.jsp">Continuar</a>
        </div>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
            integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
    crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/7adac5a862.js" crossorigin="anonymous"></script>
</body>
<script>
    <%
        int cont = 1;
        String arr[] = {"'199/10/2020'", "'27/10/2020'", "'7/11/2020'"};
        String a = "'19/10/2020'";
        String arrFechas[] = (String[]) session.getAttribute("arregloFechas");
        int arrPuntajes[] = (int[]) session.getAttribute("arregloPuntajes");
    %>
    var ctx = document.getElementById("myChart").getContext("2d");
    var myChart = new Chart(ctx, {
        type: "cake",
        data: {
            labels: [<%for (int i = 0; i < arrFechas.length; i++) {
                        if(i != arrFechas.length-1){
                        %>'<%=arrFechas[i]%>',<%
                        }else{
                        %>'<%=arrFechas[i]%>'<%
                        }
                       }
                    %>],
            datasets: [{
                    label: 'Puntaje Obtenido.',
                    data: [<%for (int i = 0; i < arrPuntajes.length; i++) {
                        if(i != arrPuntajes.length-1){
                        %>'<%=arrPuntajes[i]%>',<%
                        }else{
                        %>'<%=arrPuntajes[i]%>'<%
                        }
                       }
                    %>],
                    backgroundColor: [
                        'rgb(17, 186, 76,0.5)',
                        'rgb(74, 135, 72,0.5)',
                        'rgb(229, 89, 50,0.5)'
                    ]
                }]
        },
        options: {
            
            scales: {
                yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
            }
        }
    });
</script>
</html>
