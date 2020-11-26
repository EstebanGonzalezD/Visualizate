<%-- 
    Document   : analisisLoad
    Created on : 26/11/2020, 01:28:13 PM
    Author     : Esteban
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form class="centrado distancia" method="post" action="${pageContext.request.contextPath}/Administracion">
            <input type="hidden" value="analisis" name="pagina">
            <input type="text" placeholder="# Pregunta">
            <input type="submit" value="Buscar">
        </form>
    </body>
</html>
