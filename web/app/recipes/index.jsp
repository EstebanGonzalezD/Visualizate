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


        <!-- Links Barra Navegador-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/style-app.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/spinner.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/mediaqueries-app.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/styles-dark-mode.css">

        <title>Visualizate - Recetas</title>



    </head>
    <body>
        <!---Loader main page-->
        <div class="loader-container">
            <div class="loader">Visualízate</div>
        </div>
        <!--Navbar-->
        <nav class="navbar navbar-light fixed-top bg-light" style="display:none;">
            <a class="navbar-brand mx-auto" href="${pageContext.request.contextPath}/app/index.jsp">VISUALÍZATE</a>
            <form method="POST" action="${pageContext.request.contextPath}/test">
                <input type="hidden" name="pagina" value="signout">
                <input id="login_btn" type="submit" value="Cerrar Sesión" class="btn btn-sign_out">

            </form>
        </nav>
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
        <!-- Recetas -->       
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
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalManzanilla"><img src="img/teManzanilla.jpg" alt="" class="img">  </button>
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
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalSantolina"><img src="img/santolina.jpg" alt="" class="img">  </button>
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
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalArandanos"><img src="img/arandanos.jpg" alt="" class="img">  </button>
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
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalZanahoria"><img src="img/zanahoria.jpg" alt="" class="img">  </button>
                        <p>Zanahoria</p>
                    </div>
                </div>

                <!ACIANO>
                <div class="item"
                     data-categoria="bebidas"
                     data-etiquetas="bebidas plantas"
                     data-descripcion="5.- Lorem ipsum dolor sit amet consectetur."
                     >
                    <div class="item-contenido">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalAciano"><img src="img/aciano.jpg" alt="" class="img">  </button>
                        <p>Aciano</p>
                    </div>
                </div>

                <!PEPINO>
                <div class="item"
                     data-categoria="verduras"
                     data-etiquetas="verduras vegetal pepino"
                     data-descripcion="6.- Lorem ipsum dolor sit amet consectetur."
                     >
                    <div class="item-contenido">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalPepino"><img src="img/pepino.jpg" alt="" class="img">  </button>
                        <p>Comidas con Pepino</p>
                    </div>
                </div>


                <!Platillo>
                <div class="item"
                     data-categoria="platillos"
                     data-etiquetas="zanahoria pepino ensalada"
                     data-descripcion="7.- Lorem ipsum dolor sit amet consectetur."
                     >
                    <div class="item-contenido">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalPepino"><img src="img/zanahoriaPepino.jpg" alt="" class="img">  </button>
                        <p>Ensalada de con Zanahoria  <br>y Pepino</p>
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
            <div class="modal fade" id="ModalManzanilla" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
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



            <!-- Modal Santolina -->
            <div class="modal fade" id="ModalSantolina" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-scrollable" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalCenterTitle">Té de Santolina <i class="fas fa-coffee"></i></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>  Es un tipo de manzanilla que se recomienda para tratar la inflamación de los párpados, la
                                vista cansada y la irritación ocular. Como en el caso anterior, se puede utilizar en forma
                                de colirio o baño ocular.</p>

                            <center>
                                <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonSantolina" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Ciudad
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButtonSantolina">
                                        <a class="dropdown-item" id="medellin" onclick="ubicacionSantolina(this.id)";>Medellín</a>
                                        <a class="dropdown-item" id="bogota" onclick="ubicacionSantolina(this.id)";>Bogotá</a>
                                        <a class="dropdown-item" id="cali" onclick="ubicacionSantolina(this.id)";>Cáli</a>
                                    </div>
                                </div>
                            </center>

                            <iframe src="" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0" id="mapaSantolina"></iframe>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>



            <!-- Modal Arandanos -->
            <div class="modal fade" id="ModalArandanos" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-scrollable" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalCenterTitle">Arándanos <i class="fas fa-cookie"></i></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>  Los arándanos son una medicina natural para la visión de tus ojos porque son ricos en
                                antioxidantes que ayudan a reparar las células nerviosas de la retina. Mejor tomarlos crudos
                                o deshidratados.</p>

                            <center>
                                <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonArandanos" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Ciudad
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButtonArandanos">
                                        <a class="dropdown-item" id="medellin" onclick="ubicacionArandanos(this.id)";>Medellín</a>
                                        <a class="dropdown-item" id="bogota" onclick="ubicacionArandanos(this.id)";>Bogotá</a>
                                        <a class="dropdown-item" id="cali" onclick="ubicacionArandanos(this.id)";>Cáli</a>
                                    </div>
                                </div>
                            </center>

                            <iframe src="" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0" id="mapaArandanos"></iframe>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>





            <!-- Modal Zanahoria -->
            <div class="modal fade" id="ModalZanahoria" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-scrollable" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalCenterTitle">Zanahoria <i class="fas fa-carrot"></i></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>   Rica en vitamina A, que es necesaria para la visión en ambientes con poca iluminación.
                                Además, gracias a su riqueza en carotenos, ejerce un efecto reparador. Podrás consumirla
                                picando una o dos zanahorias junto con un trozo de apio y agua hasta obtener una pasta. Se
                                empapa una gasa o algodón con esta pasta y se aplica sobre los párpados y el contorno de
                                ojos.</p>

                            <center>
                                <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonZanahoria" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Ciudad
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButtonZanahoria">
                                        <a class="dropdown-item" id="medellin" onclick="ubicacionZanahoria(this.id)";>Medellín</a>
                                        <a class="dropdown-item" id="bogota" onclick="ubicacionZanahoria(this.id)";>Bogotá</a>
                                        <a class="dropdown-item" id="cali" onclick="ubicacionZanahoria(this.id)";>Cáli</a>
                                    </div>
                                </div>
                            </center>

                            <iframe src="" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0" id="mapaZanahoria"></iframe>
                        </div>
                        <div class="modal-footer">

                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            <a href="https://cookpad.com/co/buscar/zanahoria%20arandano"><button type="button" class="btn btn-secondary">Recetas</button></a>
                        </div>
                    </div>
                </div>
            </div>




            <!-- Modal Pepino -->
            <div class="modal fade" id="ModalPepino" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-scrollable" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalCenterTitle">Comidas con Pepino <i class="fas fa-carrot"></i></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>  El pepino en rodajas ayuda a aliviar el hinchazón de los ojos. El pepino tiene grandes
                                propiedades y vitaminas que nutren la piel alrededor de los ojos e incluso pueden reducir la
                                aparición de arrugas. Solo debes cortar un pepino en rebanadas y colocártelo sobre los ojos.
                                Dejar actuar por unos 20 minutos. Luego, enjuagar con agua fría.</p>

                            <center>
                                <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonPepino" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Ciudad
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButtonPepino">
                                        <a class="dropdown-item" id="medellin" onclick="ubicacionPepino(this.id)";>Medellín</a>
                                        <a class="dropdown-item" id="bogota" onclick="ubicacionPepino(this.id)";>Bogotá</a>
                                        <a class="dropdown-item" id="cali" onclick="ubicacionPepino(this.id)";>Cáli</a>
                                    </div>
                                </div>
                            </center>

                            <iframe src="" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0" id="mapaPepino"></iframe>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>




            <!-- Modal Aciano-->
            <div class="modal fade" id="ModalAciano" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-scrollable" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalCenterTitle">Aciano <i class="fas fa-coffee"></i></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>  El agua de aciano es muy efectivo para fortalecer y conservar la vista, sobre todo en las
                                personas de edad avanzada. Sus maravillosos efectos consisten en que muchas de sus
                                propiedades fomentan y mejoran la circulación capilar del ojo, aliviando la vista cansada y
                                la irritación ocular. Se puede tomar en infusión o aplicarla por vía típica en compresas o
                                colirios.</p>

                            <center>
                                <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonAciano" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Ciudad
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButtonAciano">
                                        <a class="dropdown-item" id="medellin" onclick="ubicacionAciano(this.id)";>Medellín</a>
                                        <a class="dropdown-item" id="bogota" onclick="ubicacionAciano(this.id)";>Bogotá</a>
                                        <a class="dropdown-item" id="cali" onclick="ubicacionAciano(this.id)";>Cáli</a>
                                    </div>
                                </div>
                            </center>

                            <iframe src="" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0" id="mapaAciano"></iframe>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>




            <!-- Modal Platillo Zanahoria y Pepino -->
            <div class="modal fade" id="ModalZanahoriaPepino" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-scrollable" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalCenterTitle">Ensalada con zanahoria y pepino <i class="far fa-salad"></i></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>   La ensalada de pepino y zanahoria rallada es fresca, colorida y sabrosa, ideal para 
                                disfrutar en cualquier época del año.  Dos verduras que suelen pasar desapercibidas y 
                                se acoplan muy bien en una misma receta, ofreciendo saciedad. Para agregar valor a este
                                plato, unas pasas de uva ligeramente dulces junto a las nueces, que aportan un toque 
                                crujiente. En el mundo de las ensaladas no todo se resume a lechuga y tomate.</p>


                            <center>
                                <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonZanahoria" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Ciudad
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButtonZanahoria">
                                        <a class="dropdown-item" id="medellin" onclick="ubicacionZanahoria(this.id)";>Medellín</a>
                                        <a class="dropdown-item" id="bogota" onclick="ubicacionZanahoria(this.id)";>Bogotá</a>
                                        <a class="dropdown-item" id="cali" onclick="ubicacionZanahoria(this.id)";>Cáli</a>
                                    </div>
                                </div>
                            </center>

                            <iframe src="" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0" id="mapaZanahoria"></iframe>
                        </div>
                        <div class="modal-footer">

                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            <a href="https://cookpad.com/co/buscar/zanahoria%20arandano" target="_blank"><button type="button" class="btn btn-secondary">Recetas</button></a>
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




        <!-- Scripts Navegador-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
                integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/app/assets/js/app.js"></script>
        <script src="${pageContext.request.contextPath}/app/assets/js/change_color.js"></script>
        <script src="https://kit.fontawesome.com/7adac5a862.js" crossorigin="anonymous"></script>
    </body>

</html>