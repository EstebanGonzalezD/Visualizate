<%-- 
    Document   : administracion
    Created on : 3/06/2020, 07:00:25 AM
    Author     : Esteban
--%>

<%@page import="Entidades.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/administracion.css">
        <script type="text/javascript" src="../app/assets/js/administracion.js"></script>
    </head>
    <body>
        <h1>Listado de usuarios</h1>

        <div class="contenedor">

            <span class="header">Nombre</span>
            <span class="header">Nombre_Usuario</span>
            <span class="header">Contraseña</span>
            <span class="header">Correo</span>
            <span class="header">Genero</span>
            <span class="header">Fecha_Nacimiento</span>
            <span class="header">Puntaje</span>
            <br>


            <%
                String color1 = "#a3f211";
                String color2 = "#11d4f2";
                String color_activo = color1;

                ArrayList<Usuario> usuarios = (ArrayList<Usuario>) request.getAttribute("usuarios");

                if (!usuarios.isEmpty()) {
                    for (Usuario c : usuarios) {

                        color_activo = (color_activo == color1) ? color2 : color1;
            %>
            <span style="background-color: <%=color_activo%>" class="filas"><%=c.getNombre()%></span>
            <span style="background-color: <%=color_activo%>" class="filas"><%=c.getUsuario()%></span>
            <span style="background-color: <%=color_activo%>" class="filas"><%=c.getContraseña()%></span>
            <span style="background-color: <%=color_activo%>" class="filas"><%=c.getCorreo()%></span>
            <span style="background-color: <%=color_activo%>" class="filas"><%=c.getGenero()%></span>
            <span style="background-color: <%=color_activo%>" class="filas"><%=c.getFecha()%></span>
            <span style="background-color: <%=color_activo%>" class="filas">0</span>
            <br>
            <%

                }

            } else {%>
            <p><%="Vacio"%></p>
            <%
                }
            %> 
        </div>



        <div>

            <div class="ingresar_usuario">
                
                <h2>Agregar un usuario</h2>
                
                <form method="post" action="Administracion">
                    <input type="text" name="nombre" placeholder="Nombre"><br><br>
                    <input type="text" name="usuario" placeholder="Nombre de usuario"><br><br>
                    <input name="password" type="password" placeholder="Contraseña"><br><br>
                    <input type="email" name="correo" placeholder="Correo"><br><br>
                    <input type="date" name="fecha" placeholder="YYYY/MM/DD"><br><br>
                    <input type="text" name="genero" placeholder="Genero"><br><br>
                    <input type="hidden" name="pagina" value="Agregar_Usuario">
                    <input type="submit" name="Enviar" value="Agregar">
                </form>

            </div>
            
            <div class="ingresar_usuario">
                
                <h2>Eliminar un usuario</h2>
                
                <form method="post" action="Administracion">
                    <input type="text" name="usuario" placeholder="Nombre de usuario"><br><br>
                    <input type="hidden" name="pagina" value="Eliminar_Usuario">
                    <input type="submit" name="Enviar" value="Eliminar">
                </form>
                
                <h2>Buscar un usuario</h2>
                
                <form method="post" action="Administracion">
                    <input type="text" name="usuario" placeholder="Usuario"><br><br>
                    <input type="hidden" name="pagina" value="Buscar_Usuario">
                    <input type="submit" name="Enviar" value="Buscar">
                </form>

            </div>
            
            <div class="ingresar_usuario">
                
                <h2>Actualizar correo</h2>
                
                <form method="post" action="Administracion">
                    <input type="text" name="usuario" placeholder="Nombre de usuario"><br><br>
                    <input type="text" name="correo" placeholder="Nuevo correo"><br><br>
                    <input type="hidden" name="pagina" value="Actualizar_Usuario">
                    <input type="submit" name="Enviar" value="Actualizar">
                </form>

            </div>

    </body>
</html>
