<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Visualízate</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
    <link rel="stylesheet" href="../app/assets/css/style-app.css">
    <link rel="stylesheet" href="../app/assets/css/spinner.css">
    <link rel="stylesheet" href="../app/assets/css/mediaqueries-app.css">
    <!----Favicon---->
    <link rel="apple-touch-icon" sizes="180x180" href="../img/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="../img/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="../img/favicon-16x16.png">
    <link rel="manifest" href="../img/site.webmanifest">
    <link rel="mask-icon" href="../img/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">
</head>

<body>
    <!---Loader main page-->
    <div class="loader-container">
        <div class="loader">Visualízate</div>
    </div>
    <!--Navbar-->
    <nav class="navbar navbar-light fixed-top bg-light" style="display:none;">
        <a class="navbar-brand mx-auto" href="../webPage/index.html">VISUALIZATE</a>
        <ul class="form-inline my-2 my-lg-0">
            <a href="../login/sign_in.jsp" class="btn btn-outline-light my-2 my-sm-0"><i
                    class="fas fa-user"></i>Iniciar Sesión
            </a>
    </nav>
    <a href="../login/sign_up.jsp" class="alert btn-primary alert-dismissible  
            fade show w-50 mensaje text-white" role="alert" style="display:none;">
        <div>
            <span>Hola!</span>
            Bienvenido a la aplicación de <strong>Visualízate.</strong>
            <br><br>
            Para poder disfrutar de todos los beneficios que tenemos para ti debes
            <span>Registrarte</span>
            <br>
            Presiona aquí!
        </div>
        <!--Close Icon-->
        <button type="button" class="btn close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">×</span>
        </button>
    </a>

    <div class="container">
        <div class="row">
            <div class="row justify-content-around">
                <a href="../login/sign_in.jsp" class="card-group">
                    <div class="col-4">
                        <div class="card content-item" id="card1">
                            <div class="card-image pic">
                                <img class="card-img-top" src="assets/img/test.jpg">
                            </div>
                            <div class="card-body">
                                <div class="card-title test">
                                    Test
                                </div>
                                <p>A continuación verás una gran ayuda para poder diagnosticar como está el estado de tu visión, y así podemos brindarte de una manera más personalizada nuestros servicios.&nbsp;</p>
                            </div>
                            <div class="card-footer">
                                <a class="btn btn-yellow">Realizar Test</a>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="${pageContext.request.contextPath}/app/recipes/index.jsp" class="card-group">
                    <div class="col-4">
                        <div class="card content-item" id="card2">
                            <div class="card-image pic">
                                <img class="card-img-top" src="assets/img/recipes.jpg">
                            </div>
                            <div class="card-body">
                                <div class="card-title recipes">
                                    Recetas
                                </div>
                                <p>No solo los buenos alimentos nutren y benefician a determinadas áreas del cuerpo, también hay recetas artesanales y combinaciones que proporcionan ayuda a la visión.</p>
                            </div>
                            <div class="card-footer">
                                <a class="btn  btn-pink">Saber Más</a>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="../login/sign_in.jsp" class="card-group">
                    <div class="col-4">
                        <div class="card content-item" id="card3">
                            <div class="card-image pic">
                                <img class="card-img-top pic" src="assets/img/exercise.jpg">
                            </div>
                            <div class="card-body">
                                <div class="card-title exercise">
                                    Ejercicios Visuales
                                </div>
                                <p>Aqui te dejamos a tu disposición varios vídeos rápidos, cortos y sencillos, donde podrás ejercitar de una manera diferente y más divertida la parte muscular del ojo.</p>
                            </div>
                            <div class="card-footer">
                                <a class="btn btn-green">Ejercitarme</a>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="row justify-content-around">
                <a href="${pageContext.request.contextPath}/app/video/index.jsp" class="card-group">
                    <div class="col-6">
                        <div class="card one content-item" id="card4">
                            <div class="card-image pic">
                                <img class="card-img-top" src="assets/img/video.jpg">
                            </div>
                            <div class="card-body">
                                <div class="card-title video">
                                    Videos
                                </div>
                                <p>Aprende más, infórmate con los siguientes videos que te brindan una entrada a diferentes maneras de poder cuidar tu visión y mejorarla con ejercicios.</p>
                            </div>
                            <div class="card-footer">
                                <a class="btn btn-purple">Ver videos</a>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="../login/sign_in.jsp" class="card-group">
                    <div class="col-6">
                        <div class="card one content-item" id="card5">
                            <div class="card-image pic">
                                <img class="card-img-top" src="assets/img/history.jpg">
                            </div>
                            <div class="card-body">
                                <div class="card-title history">
                                    Historial Diagnóstico
                                </div>
                                <p>Mira aqui el historial de todos los test que has hecho y mira los resultados desde que has estado con nuestros, si has mejorado o no ha hecho ningún cambio.</p>
                            </div>
                            <div class="card-footer">
                                <a class="btn btn-blue">Analizarme</a>
                            </div>
                        </div>
                    </div>
                </a>
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
    <script src="assets/js/app.js"></script>
    <script src="assets/js/change_color.js"></script>
    <script src="https://kit.fontawesome.com/7adac5a862.js" crossorigin="anonymous"></script>
</body>

</html>