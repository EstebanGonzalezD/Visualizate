<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Visualízate</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/style.css">
        <!----Favicon---->
        <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}img/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/img/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/img/favicon-16x16.png">
        <link rel="manifest" href="${pageContext.request.contextPath}/img/site.webmanifest">
        <link rel="mask-icon" href="${pageContext.request.contextPath}/img/safari-pinned-tab.svg" color="#5bbad5">
        
        
        <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/style-app.css">

        <meta name="msapplication-TileColor" content="#da532c">
        <meta name="theme-color" content="#ffffff">
    </head>

    <body class="backg">
        <%
            try {

                boolean status_dm = ((Boolean) request.getAttribute("status_dm")).booleanValue();

                if (status_dm) {

        %>
        <script>
            document.documentElement.classList.toggle('dark-mode');
        </script>
        <%                }
            } catch (Exception e) {
            }
        %>

        <form class="dark-mode-button" action="${pageContext.request.contextPath}/Lobby" method="post">
            <input type="hidden" name="pagina" value="Dark-mode">
            <input id="dark-mode" type="submit" value="Modo Oscuro" class="btn login_btn">
        </form>

        <div class="container">
            <div class="card title bg-light">
                <div class="border-top"></div>
                <div class="card-body">
                    <div class="card-title-container">
                        <h5 class="card-title text-center">TEST N°1</h5>
                        <hr>
                    </div>
                    <form method ="post" action="test" id="formulario">
                        <div class="container-figure-test">
                            <img class="figure-test" src="${pageContext.request.contextPath}/app/assets/img/cuestionario (2).png" alt="figura">
                        </div>
                        <div class="card-text">
                            <p class="question-title">
                                <i class="fas fa-chevron-circle-right"></i>
                                ¿Ve doble y/o borroso al leer?
                            </p>
                            <div class="form-check radio-item">
                                <input type="radio" id="op1_p1" name="respuesta-p1" value="A">
                                <label for="op1_p1">No</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op2_p1" name="respuesta-p1" value="B">
                                <label for="op2_p1">Solo en momentos específicos</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op3_p1" name="respuesta-p1" value="C">
                                <label for="op3_p1">Frecuentemente</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op4_p1" name="respuesta-p1" value="D">
                                <label for="op4_p1">Si</label>
                            </div>
                        </div>
                        <hr>
                        <div class="container-figure-test margin">
                            <img class="figure-test" src="${pageContext.request.contextPath}/app/assets/img/cuestionario (3).png" alt="figura">
                        </div>
                        <div class="card-text">
                            <p class="question-title">
                                <i class="fas fa-chevron-circle-right"></i>
                                ¿Se acerca mucho al papel cuando lee o escribe?
                            </p>
                            <div class="form-check radio-item">
                                <input type="radio" id="op1_p2" name="respuesta-p2" value="A">
                                <label for="op1_p2">No</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op2_p2" name="respuesta-p2" value="B">
                                <label for="op2_p2">Solo en momentos específicos</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op3_p2" name="respuesta-p2" value="C">
                                <label for="op3_p2">Frecuentemente</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op4_p2" name="respuesta-p2" value="D">
                                <label for="op4_p2">Si</label>
                            </div>
                        </div>
                        <hr>
                        <div class="container-figure-test margin">
                            <img class="figure-test" src="${pageContext.request.contextPath}/app/assets/img/cuestionario (4).png" alt="figura">
                        </div>
                        <div class="card-text">
                            <p class="question-title">
                                <i class="fas fa-chevron-circle-right"></i>
                                ¿Omite letras al leer o escribir?
                            </p>
                            <div class="form-check radio-item">
                                <input type="radio" id="op1_p3" name="respuesta-p3" value="A">
                                <label for="op1_p3">No</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op2_p3" name="respuesta-p3" value="B">
                                <label for="op2_p3">Solo en momentos específicos</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op3_p3" name="respuesta-p3" value="C">
                                <label for="op3_p3">Frecuentemente</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op4_p3" name="respuesta-p3" value="D">
                                <label for="op4_p3">Si</label>
                            </div>
                        </div>
                        <hr>
                        <div class="container-figure-test margin">
                            <img class="figure-test" src="${pageContext.request.contextPath}/app/assets/img/cuestionario (5).png" alt="figura">
                        </div>
                        <div class="card-text">
                            <p class="question-title">
                                <i class="fas fa-chevron-circle-right"></i>
                                ¿Tiene una velocidad lectora reducida?
                            </p>
                            <div class="form-check radio-item">
                                <input type="radio" id="op1_p4" name="respuesta-p4" value="A">
                                <label for="op1_p4">No</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op2_p4" name="respuesta-p4" value="B">
                                <label for="op2_p4">Solo en momentos específicos</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op3_p4" name="respuesta-p4" value="C">
                                <label for="op3_p4">Frecuentemente</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op4_p4" name="respuesta-p4" value="D">
                                <label for="op4_p4">Si</label>
                            </div>
                        </div>
                        <hr>
                        <div class="container-figure-test margin">
                            <img class="figure-test" src="${pageContext.request.contextPath}/app/assets/img/cuestionario (6).png" alt="figura">
                        </div>
                        <div class="card-text">
                            <p class="question-title">
                                <i class="fas fa-chevron-circle-right"></i>
                                ¿Tiene dolor de cabeza al final de un día de trabajo o de estudio?
                            </p>
                            <div class="form-check radio-item">
                                <input type="radio" id="op1_p5" name="respuesta-p5" value="A">
                                <label for="op1_p5">No</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op2_p5" name="respuesta-p5" value="B">
                                <label for="op2_p5">Solo en momentos específicos</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op3_p5" name="respuesta-p5" value="C">
                                <label for="op3_p5">Frecuentemente</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op4_p5" name="respuesta-p5" value="D">
                                <label for="op4_p5">Si</label>
                            </div>
                        </div>
                        <hr>
                        <div class="container-figure-test margin">
                            <img class="figure-test" src="${pageContext.request.contextPath}/app/assets/img/cuestionario (7).png" alt="figura">
                        </div>
                        <div class="card-text">
                            <p class="question-title">
                                <i class="fas fa-chevron-circle-right"></i>
                                ¿Gira la cabeza cuando lee y escribe y/o necesita seguir las líneas con el dedo?
                            </p>
                            <div class="form-check radio-item">
                                <input type="radio" id="op1_p6" name="respuesta-p6" value="A">
                                <label for="op1_p6">No</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op2_p6" name="respuesta-p6" value="B">
                                <label for="op2_p6">Solo en momentos específicos</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op3_p6" name="respuesta-p6" value="C">
                                <label for="op3_p6">Frecuentemente</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op4_p6" name="respuesta-p6" value="D">
                                <label for="op4_p6">Si</label>
                            </div>
                        </div>
                        <hr>
                        <div class="container-figure-test margin">
                            <img class="figure-test" src="${pageContext.request.contextPath}/app/assets/img/cuestionario (8).png" alt="figura">
                        </div>
                        <div class="card-text">
                            <p class="question-title">
                                <i class="fas fa-chevron-circle-right"></i>
                                ¿Confunde/Invierte las letras o las palabras al leer?
                            </p>
                            <div class="form-check radio-item">
                                <input type="radio" id="op1_p7" name="respuesta-p7" value="A">
                                <label for="op1_p7">No</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op2_p7" name="respuesta-p7" value="B">
                                <label for="op2_p7">Solo en momentos específicos</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op3_p7" name="respuesta-p7" value="C">
                                <label for="op3_p7">Frecuentemente</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op4_p7" name="respuesta-p7" value="D">
                                <label for="op4_p7">Si</label>
                            </div>
                        </div>
                        <hr>
                        <div class="container-figure-test margin">
                            <img class="figure-test" src="${pageContext.request.contextPath}/app/assets/img/cuestionario (9).png" alt="figura">
                        </div>
                        <div class="card-text">
                            <p class="question-title">
                                <i class="fas fa-chevron-circle-right"></i>
                                ¿Adopta malas posturas?
                            </p>
                            <div class="form-check radio-item">
                                <input type="radio" id="op1_p8" name="respuesta-p8" value="A">
                                <label for="op1_p8">No</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op2_p8" name="respuesta-p8" value="B">
                                <label for="op2_p8">Solo en momentos específicos</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op3_p8" name="respuesta-p8" value="C">
                                <label for="op3_p8">Frecuentemente</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op4_p8" name="respuesta-p8" value="D">
                                <label for="op4_p8">Si</label>
                            </div>
                        </div>
                        <hr>
                        <div class="container-figure-test margin">
                            <img class="figure-test" src="${pageContext.request.contextPath}/app/assets/img/cuestionario (10).png" alt="figura">
                        </div>
                        <div class="card-text">
                            <p class="question-title">
                                <i class="fas fa-chevron-circle-right"></i>
                                ¿TIene mala compresión lectora?
                            </p>
                            <div class="form-check radio-item">
                                <input type="radio" id="op1_p9" name="respuesta-p9" value="A">
                                <label for="op1_p9">No</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op2_p9" name="respuesta-p9" value="B">
                                <label for="op2_p9">Solo en momentos específicos</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op3_p9" name="respuesta-p9" value="C">
                                <label for="op3_p9">Frecuentemente</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op4_p9" name="respuesta-p9" value="D">
                                <label for="op4_p9">Si</label>
                            </div>
                        </div>
                        <hr>
                        <div class="container-figure-test margin">
                            <img class="figure-test" src="${pageContext.request.contextPath}/app/assets/img/cuestionario (11).png" alt="figura">
                        </div>
                        <div class="card-text">
                            <p class="question-title">
                                <i class="fas fa-chevron-circle-right"></i>
                                Vocaliza cuando lee en voz baja
                            </p>
                            <div class="form-check radio-item">
                                <input type="radio" id="op1_p10" name="respuesta-p10" value="A">
                                <label for="op1_p10">No</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op2_p10" name="respuesta-p10" value="B">
                                <label for="op2_p10">Solo en momentos específicos</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op3_p10" name="respuesta-p10" value="C">
                                <label for="op3_p10">Frecuentemente</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op4_p10" name="respuesta-p10" value="D">
                                <label for="op4_p10">Si</label>
                            </div>
                        </div>
                        <hr>
                        <!--
                        <div class="container-figure-test margin">
                            <img class="figure-test" src="assets/img/cuestionario (12).png" alt="figura">
                        </div>
                        <div class="card-text">
                            <p class="question-title">
                                <i class="fas fa-chevron-circle-right"></i>
                                Â¿Lorem ipsum dolor sit amet consectetur adipisicing elit.?
                            </p>
                            <div class="form-check radio-item">
                                <input type="radio" id="op1_p11" name="respuesta-p11" value="op1_p11">
                                <label for="op1_p11">OpciÃ³n 1</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op2_p11" name="respuesta-p11" value="op2_p11">
                                <label for="op2_p11">OpciÃ³n 2</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op3_p11" name="respuesta-p11" value="op3_p11">
                                <label for="op3_p11">OpciÃ³n 3</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op4_p11" name="respuesta-p11" value="op4_p11">
                                <label for="op4_p11">OpciÃ³n 4</label>
                            </div>
                        </div>
                        <hr>
                        <div class="container-figure-test margin">
                            <img class="figure-test" src="assets/img/cuestionario (13).png" alt="figura">
                        </div>
                        <div class="card-text">
                            <p class="question-title">
                                <i class="fas fa-chevron-circle-right"></i>
                                Â¿Lorem ipsum dolor sit amet consectetur adipisicing elit.?
                            </p>
                            <div class="form-check radio-item">
                                <input type="radio" id="op1_p12" name="respuesta-p12" value="op1_p12">
                                <label for="op1_p12">OpciÃ³n 1</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op2_p12" name="respuesta-p12" value="op2_p12">
                                <label for="op2_p12">OpciÃ³n 2</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op3_p12" name="respuesta-p12" value="op3_p12">
                                <label for="op3_p12">OpciÃ³n 3</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op4_p12" name="respuesta-p12" value="op4_p12">
                                <label for="op4_p12">OpciÃ³n 4</label>
                            </div>
                        </div>
                        <hr>
                        <div class="container-figure-test margin">
                            <img class="figure-test" src="assets/img/cuestionario (14).png" alt="figura">
                        </div>
                        <div class="card-text">
                            <p class="question-title">
                                <i class="fas fa-chevron-circle-right"></i>
                                Â¿Lorem ipsum dolor sit amet consectetur adipisicing elit.?
                            </p>
                            <div class="form-check radio-item">
                                <input type="radio" id="op1_p13" name="respuesta-p13" value="op1_p13">
                                <label for="op1_p13">OpciÃ³n 1</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op2_p13" name="respuesta-p13" value="op2_p13">
                                <label for="op2_p13">OpciÃ³n 2</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op3_p13" name="respuesta-p13" value="op3_p13">
                                <label for="op3_p13">OpciÃ³n 3</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op4_p13" name="respuesta-p13" value="op4_p13">
                                <label for="op4_p13">OpciÃ³n 4</label>
                            </div>
                        </div>
                        <hr>
                        <div class="container-figure-test margin">
                            <img class="figure-test" src="assets/img/cuestionario (15).png" alt="figura">
                        </div>
                        <div class="card-text">
                            <p class="question-title">
                                <i class="fas fa-chevron-circle-right"></i>
                                Â¿Lorem ipsum dolor sit amet consectetur adipisicing elit.?
                            </p>
                            <div class="form-check radio-item">
                                <input type="radio" id="op1_p14" name="respuesta-p14" value="op1_p14">
                                <label for="op1_p14">OpciÃ³n 1</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op2_p14" name="respuesta-p14" value="op2_p14">
                                <label for="op2_p14">OpciÃ³n 2</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op3_p14" name="respuesta-p14" value="op3_p14">
                                <label for="op3_p14">OpciÃ³n 3</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op4_p14" name="respuesta-p14" value="op4_p14">
                                <label for="op4_p14">OpciÃ³n 4</label>
                            </div>
                        </div>
                        <hr>
                        <div class="container-figure-test margin">
                            <img class="figure-test" src="assets/img/cuestionario (16).png" alt="figura">
                        </div>
                        <div class="card-text">
                            <p class="question-title">
                                <i class="fas fa-chevron-circle-right"></i>
                                Â¿Lorem ipsum dolor sit amet consectetur adipisicing elit.?
                            </p>
                            <div class="form-check radio-item">
                                <input type="radio" id="op1_p15" name="respuesta-p15" value="op1_p15">
                                <label for="op1_p15">OpciÃ³n 1</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op2_p15" name="respuesta-p15" value="op2_p15">
                                <label for="op2_p15">OpciÃ³n 2</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op3_p15" name="respuesta-p15" value="op3_p15">
                                <label for="op3_p15">OpciÃ³n 3</label>
                            </div>
                            <div class="form-check radio-item">
                                <input type="radio" id="op4_p15" name="respuesta-p15" value="op4_p15">
                                <label for="op4_p15">OpciÃ³n 4</label>
                            </div>
                        </div> -->

                        <div class="col text-center">
                            <a href="index_test.jsp" class="btn btn-start-test">Atrás</a>
                            <input type="hidden" name="pagina" value="test">
                            <input type="submit" value="Enviar Respuestas" class="btn btn-start-test" id="btnValidar">
                        </div>
                    </form>
                    <div class="card-footer text-muted">
                        Página 2 de 2
                    </div>
                </div>
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
        <script src="${pageContext.request.contextPath}/app/assets/js/test.js"></script>
        <script src="https://kit.fontawesome.com/7adac5a862.js" crossorigin="anonymous"></script>
    </body>

</html>