<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
        <link rel="stylesheet" href="estilos.css">

        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <!-- Menu Desplegable -->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

        <!-- Dark mode -->

        <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/style-app.css">

        <title>Visualizate - Recetas</title>



    </head>
    <body>

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

        <div class="contenedor">
            <header>
                <form action="">
                    <input type="text" class="barra-busqueda" id="barra-busqueda" placeholder="Buscar">
                </form>

                <div class="categorias" id="categorias">
                    <a href="#" class="activo">Todos</a>
                    <a href="#">Bebidas</a>
                    <a href="#">Frutos</a>
                    <a href="#">Verduras</a>
                    <a href="#">Platillos</a>
                </div>
            </header>

            <section class="grid" id="grid">

                <!Te Manzanilla>
                <div class="item" 
                     data-categoria="bebidas"
                     data-etiquetas="bebidas manzanilla te plantas"
                     data-descripcion="Un te de manzanilla facil de preparar, 
                     la manzanilla es un clásico en el cuidado de los ojos "
                     >
                    <div class="item-contenido">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter"><img src="img/teManzanilla.jpg" alt="">  </button>
                        <p>Té de Manzanilla</p>
                    </div>
                </div>



                <!SANTOLINA>
                <div class="item"
                     data-categoria="bebidas"
                     data-etiquetas="manzanilla bebidas te plantas"
                     data-descripcion="Es un tipo de manzanilla que se recomienda para 
                     tratar la inflamación de los párpados"
                     >
                    <div class="item-contenido">
                        <img src="img/santolina.jpg" alt="">
                        <p>Té de Santolina</p>
                    </div>
                </div>

                <!ARÁNDANOS>
                <div class="item"
                     data-categoria="frutos"
                     data-etiquetas="frutos arandanos comida"
                     data-descripcion="3.- Lorem ipsum dolor sit amet consectetur."
                     >
                    <div class="item-contenido">
                        <img src="img/arandanos.jpg" alt="">
                        <p>Arándanos</p>
                    </div>
                </div>


                <!ZANAHORIA>
                <div class="item"
                     data-categoria="verduras"
                     data-etiquetas="zanahoria verdura vegetal"
                     data-descripcion="4.- Lorem ipsum dolor sit amet consectetur."
                     >
                    <div class="item-contenido">
                        <img src="img/zanahoria.jpg" alt="">
                        <p>Comidas con Zanahoria</p>
                    </div>
                </div>

                <!ACIANO>
                <div class="item"
                     data-categoria="bebidas"
                     data-etiquetas="bebidas plantas"
                     data-descripcion="5.- Lorem ipsum dolor sit amet consectetur."
                     >
                    <div class="item-contenido">
                        <img src="img/aciano.jpg" alt="">
                        <p>Bebida de Aciano</p>
                    </div>
                </div>

                <!PEPINO>
                <div class="item"
                     data-categoria="verduras"
                     data-etiquetas="verduras vegetal pepino"
                     data-descripcion="6.- Lorem ipsum dolor sit amet consectetur."
                     >
                    <div class="item-contenido">
                        <img src="img/pepino.jpg" alt="">
                        <p>Comidas con Pepino</p>
                    </div>
                </div>

                <div class="item"
                     data-categoria="paisajes"
                     data-etiquetas="paisajes montañas niebla"
                     data-descripcion="7.- Lorem ipsum dolor sit amet consectetur."
                     >
                    <div class="item-contenido">
                        <img src="img/paisaje2.png" alt="">
                    </div>
                </div>

                <div class="item" 
                     data-categoria="ciudades"
                     data-etiquetas="ciudades paisajes carreteras"
                     data-descripcion="8.- Lorem ipsum dolor sit amet consectetur."
                     >
                    <div class="item-contenido">
                        <img src="img/ciudad2.png" alt="">
                    </div>
                </div>

                <div class="item"
                     data-categoria="bebidas"
                     data-etiquetas="bebidas hojas plantas"
                     data-descripcion="9.- Lorem ipsum dolor sit amet consectetur.
                     "
                     >
                    <div class="item-contenido">
                        <img src="img/naturaleza1.png" alt="">
                    </div>
                </div>
            </section>

            <section class="overlay" id="overlay">
                <div class="contenedor-img">
                    <button id="btn-cerrar-popup"><i class="fas fa-times"></i></button>
                    <img src="" alt="">
                </div>
                <p class="descripcion"></p>
            </section>

            <!-- Modal Manzanilla -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-scrollable" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalCenterTitle">Té de Manzanilla <i class="fas fa-coffee"></i></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p> La manzanilla es un clásico en el cuidado de los ojos, posee un efecto antiinflamatorio que
                                la hace ideal para tratar problemas como la conjuntivitis, los ojos cansados y los
                                orzuelos. Utilízala en forma de colirio o baño ocular.</p>

                            <center>
                                <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Ciudad
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" id="medellin" onclick="ubicacion(this.id)";>Medellín</a>
                                        <a class="dropdown-item" id="bogota" onclick="ubicacion(this.id)";>Bogotá</a>
                                        <a class="dropdown-item" id="cali" onclick="ubicacion(this.id)";>Cáli</a>
                                    </div>
                                </div>
                            </center>

                            <iframe src="" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0" id="mapa"></iframe>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>



            <footer class="contenedor">
                <div class="redes-sociales">
                    <div class="contenedor-icono">
                        <a href="http://www.twitter.com/falconmasters" target="_blank" class="twitter">
                            <i class="fab fa-twitter"></i>
                        </a>
                    </div>
                    <div class="contenedor-icono">
                        <a href="http://www.facebook.com/falconmasters" target="_blank" class="facebook">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                    </div>
                    <div class="contenedor-icono">
                        <a href="http://www.instagram.com" target="_blank" class="instagram">
                            <i class="fab fa-instagram"></i>
                        </a>
                    </div>
                </div>

            </footer>
        </div>

        <!-- BootsTrap -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

        <!-- Scripts Desplegable -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        <script src="https://unpkg.com/web-animations-js@2.3.2/web-animations.min.js"></script>
        <script src="https://unpkg.com/muuri@0.8.0/dist/muuri.min.js"></script>
        <script src="main.js"></script>
        <script src="desplegable.js"></script>

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