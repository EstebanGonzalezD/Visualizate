<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Visualízate</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/styles-dark-mode.css">
    <!----Favicon---->
    <link rel="apple-touch-icon" sizes="180x180" href="../../img/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="../../img/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="../../img/favicon-16x16.png">
    <link rel="manifest" href="../../img/site.webmanifest">
    <link rel="mask-icon" href="../../img/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">
</head>

<body>
    <%
            try {
                HttpSession sesion = request.getSession(false);
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
        <div class="card title bg-light">
            <div class="border-top"></div>
            <div class="card-body">
                <div class="card-title-container">
                    <h5 class="card-title text-center">VISUALIZATE</h5>
                    <hr>
                </div>
                <p>Presentado por Visualízate</p>
                <span class="required">*Obligatorio</span>
            </div>
        </div>
        <div class="card instructions bg-light">
            <div class="card-body">
                <div class="container-figure-test">
                    <img class="figure-test" src="assets/img/cuestionario (1).png" alt="figura">
                </div>
                <div class="card-text">
                    <p>
                        Por favor responde a estas 10 preguntas, de esta manera podremos calcular un diagnóstico que determine tu estado actual de visión.
                        <br>
                        Solo debes seleccionar una respuesta por pregunta.
                    </p>
                </div>
            </div>
        </div>
        <div class="card consent bg-light">
            <div class="card-body">
                <div class="container-figure-test-other">
                    <img class="figure-test-other" src="assets/img/cuestionario (17).png" alt="figura">
                </div>
                <div class="card-text">
                    <p>
                        Cumplimento esta encuesta de forma voluntaria,y con su cumplimentación manifiesto mi
                        consentimiento implícito al uso de los datos proporcionados.
                    </p>
                </div>
            </div>
        </div>
        <div class="col text-center">
            <form method="post" action="../Lobby">
                <input type="hidden" name="pagina" value="pre_test">
                <input id="start_test" type="submit" value="Empezar test" class="btn btn-start-test">
            </form>
            
        </div>

        <div class="card-footer text-muted">
            Página 1 de 2
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/7adac5a862.js" crossorigin="anonymous"></script>
</body>

</html>