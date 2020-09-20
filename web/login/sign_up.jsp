<%-- 
    Document   : sign_up
    Created on : 3/06/2020, 01:50:38 AM
    Author     : Esteban
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Registro</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
        <link rel="stylesheet" href="../login/assets/css/style-login.css">
        <link rel="stylesheet" href="../login/assets/css/mediaqueries-login.css">
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
    <div class="btn-back">
        <a href="../webPage/index.html" class="btn"><i class="fas fa-angle-left"></i></a>
    </div>
    <div class="container h-100">
        <div class="d-flex justify-content-center h-100">
            <div class="user_card">
                <div class="d-flex justify-content-center">
                    <div class="brand_logo_container sign_up">
                        <h1 class="brand_logo">VISUALÍZATE</h1>
                    </div>
                </div>
                <div class="d-flex justify-content-center form_container">
                    <form class="needs-validation sign_up" method ="post" action="../ServletRegistro" novalidate>
                        <div class="form-row">
                            <div class="col-md-6">
                                <input name="nombre" type="text" class="form-control input" id="validationName"
                                    placeholder="Nombre Completo" required>
                                <div class="line-box">
                                    <div class="line"></div>
                                </div>
                                <div class="invalid-feedback">
         
                                    Por favor ingresa un Nombre válido.
                                </div>
                            </div>
                            <div class="col-md-6">
                                <input name="apellidos" type="text" class="form-control input" id="validationLastName"
                                       placeholder="Apellidos"  required>
                                <div class="line-box">
                                    <div class="line"></div>
                                </div>
                                <div class="invalid-feedback">
                                    Por favor ingresa un Apellido válido.
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputUsername">@</span>
                                    </div>
                                    <input name="username" type="text" class="form-control input" id="validationCustomUsername"
                                        placeholder="Nombre de usuario" aria-describedby="inputGroupPrepend" required>
                                    <div class="line-box">
                                        <div class="line"></div>
                                    </div>
                                    <div class="invalid-feedback">
                                        Por favor ingresa un Nombre de Usuario válido
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <input name="password" type="password" class="form-control input" id="input_pass"
                                    placeholder="Contraseña" minlength="8" pattern="[A-Za-z0-9!?-]{8,12}" required>
                                <div class="line-box">
                                    <div class="line"></div>
                                </div>
                                <span toggle="#input_pass"
                                    class="fa fa-fw fa-eye sign-up field-icon toggle-password"></span>
                                <small id="passwordHelpBlock" class="form-text text-muted">
                                    Tu contraseña debe contener mínimo 8 caracteres, números y una letra mayúsculas
                                </small>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <input name="correo" type="email" class="form-control input" id="email"
                                    placeholder="Correo Electrónico" required>
                                <div class="line-box">
                                    <div class="line"></div>
                                </div>
                                <div class="invalid-feedback">
                                    Por favor ingresa un correo válido
                                </div>
                            </div>
                            <div class="col-md-6">
                                <input name="fecha" type="date" class="form-control input" id="validationDate" required>
                                <div class="line-box">
                                    <div class="line"></div>
                                </div>
                                <div class="invalid-feedback">
                                    Ingresa tu fecha de nacimiento
                                </div>
                            </div>
                        </div>
                        <label for="">
                            <h2><i class="fas fa-venus-mars"></i>Género</h2>
                        </label>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" id="femaleGender" name="customRadioInline1" value="Femenino"
                                class="custom-control-input ">
                            <label class="custom-control-label gender" for="femaleGender">Femenino</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" id="maleGender" name="customRadioInline1" value="Masculino" class="custom-control-input">
                            <label class="custom-control-label gender" for="maleGender">Masculino</label>
                        </div>
                        
                        <!-- <div class="custom-control custom-checkbox mb-3">
                            <input type="checkbox" class="custom-control-input" id="customControlValidation1" required>
                           <label class="custom-control-label" for="customControlValidation1">Acepto los <a
                                    href="#">terminos y
                                    condiciones</a></label>
                            <div class="invalid-feedback">Debes seleccionar esta casilla para continuar</div>
                        </div>-->
                        
                        <br>
                        <input type="hidden" name="pagina" value="registro">
                        <button class="btn btn-primary btn_submit_SignUp" type="submit">Registrarse</button>
                    </form>
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
    <script src="../webPage/assets/js/animation.js"></script>
    <script src="assets/js/validacion.js"></script>
    <script src="https://kit.fontawesome.com/7adac5a862.js" crossorigin="anonymous"></script>
    <script src="assets/js/login.js"></script>
</body>

</html>
