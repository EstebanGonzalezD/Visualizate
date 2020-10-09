<!DOCTYPE html>
<<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js"></script>
        <link rel="stylesheet" href="estilos.css">
        <title>Visualizate - Recetas</title>
    </head>
    <body>

        <div class="contenedor">
            <header>

                <form action="">
                    <input type="text" class="barra-busqueda" id="barra-busqueda" placeholder="Buscar">
                </form>
                <div class="categorias" id="categorias">
                    <a href="#" class="activo">Todos</a>
                    <a href="#">Naturaleza</a>
                    <a href="#">Ciudades</a>
                    <a href="#">Personas</a>
                    <a href="#">Animales</a>
                </div>
            </header>

            <section class="grid" id="grid">
                <div class="item" 
                     data-categoria="ciudades"
                     data-etiquetas="ciudades autos carros calles"
                     data-descripcion="1.- Lorem ipsum dolor sit amet consectetur."
                     >
                    <div class="item-contenido">
                        <img src="img/ciudad1.png" alt="">
                    </div>
                </div>

                <div class="item"
                     data-categoria="personas"
                     data-etiquetas="personas mujeres"
                     data-descripcion="2.- Lorem ipsum dolor sit amet consectetur."
                     >
                    <div class="item-contenido">
                        <img src="img/persona1.png" alt="">
                    </div>
                </div>

                <div class="item"
                     data-categoria="paisajes"
                     data-etiquetas="paisajes montañas mar playas"
                     data-descripcion="3.- Lorem ipsum dolor sit amet consectetur."
                     >
                    <div class="item-contenido">
                        <img src="img/paisaje1.png" alt="">
                    </div>
                </div>

                <div class="item"
                     data-categoria="animales"
                     data-etiquetas="animales leones"
                     data-descripcion="4.- Lorem ipsum dolor sit amet consectetur."
                     >
                    <div class="item-contenido">
                        <img src="img/animal1.png" alt="">
                    </div>
                </div>

                <div class="item"
                     data-categoria="animales"
                     data-etiquetas="animales pandas"
                     data-descripcion="5.- Lorem ipsum dolor sit amet consectetur."
                     >
                    <div class="item-contenido">
                        <img src="img/animal2.png" alt="">
                    </div>
                </div>

                <div class="item"
                     data-categoria="personas"
                     data-etiquetas="personas mujeres"
                     data-descripcion="6.- Lorem ipsum dolor sit amet consectetur."
                     >
                    <div class="item-contenido">
                        <img src="img/persona2.png" alt="">
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
                     data-categoria="naturaleza"
                     data-etiquetas="naturaleza hojas plantas"
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
                <div class="creado-por">
                    <p>Sitio diseñado por <a href="#">Carlos Arturo</a> - <a href="https://www.falconmasters.com">FalconMasters</a></p>
                </div>
            </footer>
        </div>

        <script src="https://unpkg.com/web-animations-js@2.3.2/web-animations.min.js"></script>
        <script src="https://unpkg.com/muuri@0.8.0/dist/muuri.min.js"></script>
        <script src="main.js"></script>

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