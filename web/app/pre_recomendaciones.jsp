<%-- 
    Document   : pre_recomendaciones
    Created on : 7/06/2020, 07:09:42 AM
    Author     : Esteban
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicios</title>

        <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/style_historial.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/styles-dark-mode.css">
        <link href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@1,400;1,500&display=swap" rel="stylesheet">
    </head>
    <body>
        <style>
            body{
                background-color: #f2f2f2;
            }

            p,h2{
                font-family: 'Ubuntu', sans-serif;  
            }

        </style>
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
    <center>
        <div style="padding-top:100px; padding-bottom: 50px">
            <h1 id="TituloTexto" class="text-center" style="width: 800px; text-align: center">
                Visualizate</h1>
        </div>
    </center>    

    <center>
        <div class="container" style="padding-top: 50px">
            <div class=" text-center w-50">
                <p>Ejercicios Recomendados</p>
                <hr>
            </div>
            <div class="container-text text-center w-100">
                <h2 style="padding-bottom:40px">Bienvenido a los Ejercicios</h2>
                <p>Encontraras una serie de ejercicios en base a los resultados de tus seguimientos <br> 
                    Estos ejercicios te ayudaran a mejorar tu salud visual a lo largo que los vayas completando</p>
            </div>
        </div>
    </center>


    <form method="post" action="../test"> 


        <div style="margin-top: 30px; margin-bottom: 30px; padding-top: 50px; font-size: 25px" class="d-flex justify-content-center">
            <input type="hidden" name="pagina" value="pre_recomendaciones">
            <input type="submit" name="boton" class="btn btn-primary" value="Continuar">
        </div>


    </form>

</body>
</html>
