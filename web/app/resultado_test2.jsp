<%-- 
    Document   : resultado_test2
    Created on : 7/06/2020, 09:57:00 AM
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
            int puntaje = (Integer)session.getAttribute("puntaje2");
            
            if(username == null && password == null ){
                response.sendRedirect("app/index.jsp");
            }else{
            
        %>
        <span>
            Usuario: <%=username%> <br>
            Puntaje: <%=puntaje%> <br>
            <a href="${pageContext.request.contextPath}/app/index.jsp">Continuar</a>
        </span>
            <%
                }
            %>
    </body>
</html>
