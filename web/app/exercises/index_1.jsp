<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Visualizate Regular</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/exercises/assets/css/style.css">
    <!----Favicon---->
    <link rel="apple-touch-icon" sizes="180x180" href="img/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="img/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="img/favicon-16x16.png">
    <link rel="manifest" href="img/site.webmanifest">
    <link rel="mask-icon" href="img/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">
</head>

<body>
    <div class="navbar">
        <nav class="navbar navbar-light fixed-top bg-light">
            <a class="navbar-brand mx-auto" href="${pageContext.request.contextPath}/app/index.jsp">VISUALIZATE</a>
            <a href="${pageContext.request.contextPath}/login/sign_in.jsp" class="btn btn-sign_out">
                <i class="fas fa-sign-out-alt"></i>Cerrar Sesión</a>
        </nav>
    </div>
    <!--Modal-buttons-->
    <div class="container">
        <div class="card">
            <h5 class="card-title w-100 text-center">EJERCICIOS</h5>
            <hr>
            <div class="card-body">
                <p class="card-text w-100 text-center">
                    Realiza estos ejercicios, tienen una duración apróximadamente de 2 minutos cada uno.
                </p>
                <div class="row justify-content-md-center">
                    <div class="col-sm">
                        <button type="button" class="btn btn_modal btn1" data-toggle="modal" data-target="#Ejercicio1">
                            Ejercicio 1
                        </button>
                    </div>
                    <div class="col-sm">
                        <button type="button" class="btn btn_modal btn2" data-toggle="modal" data-target="#Ejercicio2">
                            Ejercicio 2
                        </button>
                    </div>
                    <div class="col-sm">
                        <button type="button" class="btn btn_modal btn3" data-toggle="modal" data-target="#Ejercicio3">
                            Ejercicio 3
                        </button>
                    </div>
                </div>
                <div class="row ">
                    <div class="col-sm">
                        <button type="button" class="btn btn_modal btn4" data-toggle="modal" data-target="#Ejercicio4">
                            Ejercicio 4
                        </button>
                    </div>
                    <div class="col-sm">
                        <button type="button" class="btn btn_modal btn5" data-toggle="modal" data-target="#Ejercicio5">
                            Ejercicio 5
                        </button>
                    </div>
                    <div class="col-sm">
                        <button type="button" class="btn btn_modal btn6" data-toggle="modal" data-target="#Ejercicio6">
                            Ejercicio 6
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-modal">
        <!--Ejercicio 1-->
        <div class="modal fade bd-example-modal-lg" id="Ejercicio1" tabindex="-1" role="dialog"
            aria-labelledby="ejercicio1" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title w-100 text-center" id="exampleModalLabel">Parpadea rápido</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img class="img-exersice" src="${pageContext.request.contextPath}/app/exercises/assets/img/ejercicio1.png" width="365" alt="">
                        <ol>
                            <li>
                                Es uno de los ejercicios más fáciles que puedes llevar a cabo. Se trata, simplemente de abrir y cerrar los párpados. De este modo, lubricas el ojo de una forma natural, sin necesidad de ponerte colirio. 
                                
                            </li>
                            <li>
                                Esto es muy recomendable en casos de sequedad ocular. También mejora la circulación sanguínea del ojo. 
                            </li>
                            <li>Puedes hacerlo en cualquier momento, especialmente si vas a estar mucho tiempo fijando la vista.</li>
                      
                        </ol>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success btn_end1" data-dismiss="modal">
                            Finalizar Ejercicio
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!--Ejercicio 2-->
        <div class="modal fade bd-example-modal-lg" id="Ejercicio2" tabindex="-1" role="dialog"
            aria-labelledby="ejercicio2" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title w-100 text-center" id="exampleModalLabel">Parpadea lento</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img class="img-exersice1" src="${pageContext.request.contextPath}/app/exercises/assets/img/ejercicio2.png" width="465" alt="">
                        <ol>
                            <li>Cada mañana y cada noche, cierra los ojos unos cinco segundos y vuélvelos a abrir. Repite el ejercicio unas siete veces.</li>
                            <li>También puedes hacerlo cuando notes que has forzado la vista y la tienes muy cansada. 
                                
                                    <li>De esta manera relajas los músculos oculares y, a la vez, activas la circulación. </li>
                                    <li>También puedes intentar dejar la mente en blanco mientras lo haces y respirar profundamente para ahuyentar el estrés. Un dos en uno.</li>
                                  
                               
                            </li>
                        </ol>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success btn_end2" data-dismiss="modal">
                            Finalizar Ejercicio
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!--Ejercicio 3-->
        <div class="modal fade bd-example-modal-lg" id="Ejercicio3" tabindex="-1" role="dialog"
            aria-labelledby="ejercicio3" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title w-100 text-center" id="exampleModalLabel">Enfoca mejor</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img class="img-exersice" src="${pageContext.request.contextPath}/app/exercises/assets/img/ejercicio3-1.png" width="165" alt="">
                        <img class="img-exersice" src="${pageContext.request.contextPath}/app/exercises/assets/img/ejercicio3-2.png" width="165" alt="">
                        <ol>
                            <li class="left">Con el tiempo, dejamos de enfocar correctamente. Ya no podemos leer algo demasiado cerca y necesitamos cierta distancia para que el ojo enfoque.</li>
                            <li class="left">
                                 No te vamos a engañar: es difícil revertir este proceso, pero puedes intentar que no vaya a más. En este caso lo que debes realizar son ejercicios de acomodación. 

                            </li>
                        </ol>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success btn_end3" data-dismiss="modal">
                            Finalizar Ejercicio
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!--Ejercicio 4-->
        <div class="modal fade bd-example-modal-lg" id="Ejercicio4" tabindex="-1" role="dialog"
            aria-labelledby="Ejercicio4" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title w-100 text-center" id="exampleModalLabel">El relajante palmeado</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img class="img-exersice2" src="${pageContext.request.contextPath}/app/exercises/assets/img/ejercicio4-1.png" width="265" alt="">
                        <img class="img-exersice2" src="${pageContext.request.contextPath}/app/exercises/assets/img/ejercicio4-2.png" width="350" height="286" alt="">
                        <ol>
                            <li>
                                Es un ejercicio muy placentero. Se trata de simplemente apoyar las palmas de los manos sobre los ojos cerrados. 
                            </li>
                            <li>
                                Si tienes las manos frías, frótalas para que entren en calor. 
                            </li>
                            <li>
                               Puedes estar así desde unos segundos hasta cinco minutos. Es el momento de descansar, de sentir que no hay ninguna tensión en el ojo.
                            </li>
                            
                        </ol>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success btn_end4" data-dismiss="modal">
                            Finalizar Ejercicio
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!--Ejercicio 5-->
        <div class="modal fade bd-example-modal-lg" id="Ejercicio5" tabindex="-1" role="dialog"
            aria-labelledby="ejercicio5" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title w-100 text-center" id="exampleModalLabel">Leve presión</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img class="img-exersice" src="${pageContext.request.contextPath}/app/exercises/assets/img/ejercicio5.png" width="465" alt="">
                        <div class="modal-text">
                            <ol>
                                <li>
                                    Utiliza los dedos para hacer una pequeña presión sobre los ojos, de esta forma consigues activar el paso del líquido intraocular.
                                </li>
                                <li>
                                    Deberías aguantar la leve presión durante unos dos o tres segundos y repetir el ejercicio cinco veces. Puedes hacerlo por la mañana y por la noche y cuando sientas cansancio ocular.
                                </li>
                            </ol>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success btn_end5" data-dismiss="modal">
                            Finalizar Ejercicio
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!--Ejercicio 6-->
        <div class="modal fade bd-example-modal-lg" id="Ejercicio6" tabindex="-1" role="dialog"
            aria-labelledby="ejercicio6" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title w-100 text-center" id="exampleModalLabel">Mueve los ojos</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img class="img-exersice" src="${pageContext.request.contextPath}/app/exercises/assets/img/ejercicio6-1.png" width="465" alt="">
                        <img class="img-exersice" src="${pageContext.request.contextPath}/app/exercises/assets/img/ejercicio6-2.png" width="465" alt="">
                        <div class="modal-text">
                            <ol>
                                <li>
                                   Generalmente enfocamos la visión hacia un punto frontal y ahí la dejamos.
                                </li>
                                <li>
                                    Es lo que ocurre cuando estás frente a la pantalla del ordenador, por ejemplo. </li>
                                <li>
                                    Eso hace que no ejercitemos el nervio óptico, que cada día se queda más anquilosado.
                                </li>
                                <li>
                                    Para volver a tenerlo en forma, con la espalda recta y la cabeza quieta, mira a la izquierda y luego a la derecha. 
                                </li>
                            </ol>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success btn_end6" data-dismiss="modal">
                            Finalizar Ejercicio
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="card">
            <h5 class="video-title w-100 text-center">VIDEOS</h5>
            <hr>
            <div class="card-body">
                <p class="card-text w-100 text-center">
                    Realiza estos ejercicios una vez al día y lograrás grandes mejoras en tu visión!
                </p>
                <div class="row justify-content-md-center">
                    <div class="col-sm">
                        <button type="button" class="btn btn_modal btn_v1" data-toggle="modal" data-target="#Video1">
                            VIDEO 1
                        </button>
                    </div>
                    <div class="col-sm">
                        <button type="button" class="btn btn_modal btn_v2" data-toggle="modal" data-target="#Video2">
                            VIDEO 2
                        </button>
                    </div>
                    <div class="col-sm">
                        <button type="button" class="btn btn_modal btn_v3" data-toggle="modal" data-target="#Video3">
                            VIDEO 3
                        </button>
                    </div>
                </div>
                <div class="row ">
                    <div class="col-sm">
                        <button type="button" class="btn btn_modal btn_v4" data-toggle="modal" data-target="#Video4">
                            VIDEO 4
                        </button>
                    </div>
                    <div class="col-sm">
                        <button type="button" class="btn btn_modal btn_v5" data-toggle="modal" data-target="#Video5">
                            VIDEO 5
                        </button>
                    </div>
                    <div class="col-sm">
                        <button type="button" class="btn btn_modal btn_v6" data-toggle="modal" data-target="#Video6">
                            VIDEO 6
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade bd-example-modal-lg" id="Video1" tabindex="-1" role="dialog" aria-labelledby="video1"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title w-100 text-center" id="exampleModalLabel">Masaje alrededor de los ojos</h5>
                </div>
                <div class="modal-body">
                    <iframe width="765" height="415" src="https://www.youtube.com/embed/Kp1k3cofa4M" frameborder="0"
                        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <p>&#169; Copyright 2020 - Tatiana Gebrael </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn_v_end1" data-dismiss="modal">
                        Finalizar Video
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade bd-example-modal-lg" id="Video2" tabindex="-1" role="dialog" aria-labelledby="video2"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title w-100 text-center" id="exampleModalLabel">Abrir y cerrar los párpados</h5>
                </div>
                <div class="modal-body">
                    <iframe width="765" height="415" src="https://www.youtube.com/embed/qqM3-6dgMAY" frameborder="0"
                        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <p>&#169; Copyright 2020 - Tatiana Gebrael </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn_v_end2" data-dismiss="modal">
                        Finalizar Video
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade bd-example-modal-lg" id="Video3" tabindex="-1" role="dialog" aria-labelledby="video3"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title w-100 text-center" id="exampleModalLabel">8 Perfecto</h5>
                </div>
                <div class="modal-body">
                    <iframe width="765" height="415" src="https://www.youtube.com/embed/8iMv17KdwNI" frameborder="0"
                        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <p>&#169; Copyright 2020 - Tatiana Gebrael </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn_v_end3" data-dismiss="modal">
                        Finalizar Video
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade bd-example-modal-lg" id="Video4" tabindex="-1" role="dialog" aria-labelledby="video4"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title w-100 text-center" id="exampleModalLabel">Zig Zag</h5>
                </div>
                <div class="modal-body">
                    <iframe width="765" height="415" src="https://www.youtube.com/embed/nRgrqegpxIo" frameborder="0"
                        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <p>&#169; Copyright 2020 - Tatiana Gebrael </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn_v_end4" data-dismiss="modal">
                        Finalizar Video
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade bd-example-modal-lg" id="Video5" tabindex="-1" role="dialog" aria-labelledby="video5"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title w-100 text-center" id="exampleModalLabel">Diagonal 2</h5>
                </div>
                <div class="modal-body">
                    <iframe width="765" height="415" src="https://www.youtube.com/embed/UZijQU-OxlU" frameborder="0"
                        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <p>&#169; Copyright 2020 - Tatiana Gebrael </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn_v_end5" data-dismiss="modal">
                        Finalizar Video
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade bd-example-modal-lg" id="Video6" tabindex="-1" role="dialog" aria-labelledby="video6"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title w-100 text-center" id="exampleModalLabel">Fortalecer los párpados</h5>
                </div>
                <div class="modal-body">
                    <iframe width="765" height="415" src="https://www.youtube.com/embed/WLPZLpZ7d3o" frameborder="0"
                        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <p>&#169; Copyright 2020 - Tatiana Gebrael </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn_v_end6" data-dismiss="modal">
                        Finalizar Video
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="btn-back">
        <a href="${pageContext.request.contextPath}/app/index.jsp" class="btn"><i class="fas fa-angle-left"></i></a>
    </div>


    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/app/exercises/assets/js/Change_Exercise.js"></script>
    <script src="${pageContext.request.contextPath}/app/exercises/assets/js/Change_Video.js"></script>
    <script src="https://kit.fontawesome.com/7adac5a862.js" crossorigin="anonymous"></script>
</body>

</html>