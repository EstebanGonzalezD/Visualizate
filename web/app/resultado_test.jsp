<%-- 
    Document   : resultado_test
    Created on : 5/06/2020, 07:50:01 AM
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
        <%
            String username = (String) session.getAttribute("username");
            String password = (String) session.getAttribute("password");
            int id = (Integer) session.getAttribute("id");
            int puntaje = (Integer)session.getAttribute("puntaje");
            
            if(username == null && password == null ){
                response.sendRedirect("app/index.jsp");
            }else{
            
        %>
        <span>
            Usuario: <%=username%> <br>
            Puntaje: <%=puntaje%> <br>
            ID: <%=id%> <br>
            <a href="app/index.jsp">Continuar</a>
        </span>
            <%
                }
            %>
    </body>
</html>
