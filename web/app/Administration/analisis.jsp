<%-- 
    Document   : analisis
    Created on : 26/11/2020, 10:53:42 AM
    Author     : Esteban
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/app/Administration/css/Analisis.css">
        <title>Análisis</title>
    </head>
    <body>     
        <h1 class="centrado distancia">Análisis de Preguntas</h1>
        
        <form class="centrado distancia" method="post" action="${pageContext.request.contextPath}/Administracion">
            <input type="hidden" value="analisis_buscar" name="pagina">
            <input name="numero" type="text" placeholder="# Pregunta">
            <input type="submit" value="Buscar">
        </form>

        <div style="margin: auto;" class="grafico">   
            <canvas id="doughnut-chart"></canvas>
        </div>
    </body>
    <script>
                
        <%
            int arr[] = (int[]) request.getAttribute("arrAnalisis");         
        %>
        new Chart(document.getElementById("doughnut-chart"), {
            type: 'doughnut',
            data: {
                labels: ["A", "B", "C", "D"],
                datasets: [
                    {
                        label: "Número Respuestas",
                        backgroundColor: ["#8e5ea2", "#3cba9f", "#e8c3b9", "#c45850"],
                        data: [<%=arr[1]%>, <%=arr[2]%>, <%=arr[3]%>, <%=arr[4]%>]
                    }
                ]
            },
            options: {
                title: {
                    display: true,
                    text: 'Respuestas Totales <%=arr[0]%>'
                }
            }
        });

    </script>
</html>
