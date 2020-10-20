<%-- 
    Document   : sign_adm
    Created on : 3/06/2020, 06:53:08 AM
    Author     : Esteban
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Iniciar Sesión</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/login/assets/css/style-login.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/login/assets/css/mediaqueries-login.css">
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
            <a href="../webPage/" class="btn"><i class="fas fa-angle-left"></i></a>
        </div>
        <div class="container h-100">
            <div class="d-flex justify-content-center h-100">
                <div class="user_card admin">
                    <div class="d-flex justify-content-center">
                        <div class="brand_logo_container login">
                            <h1 class="brand_logo">ADMINISTRACIÓN</h1>
                        </div>
                    </div>
                    <hr>
                    <div class="d-flex justify-content-center form_container">
                        <form method="post" action="../Administracion" onSubmit="return ValidateAdminPassword();">
                            <div class="form-group">
                                <select name="options" id="admin_user" class="form-control">
                                    <option value="" selected="selected">Seleccione...</option>
                                    <option value="opcion1">Esteban Gonzalez</option>
                                    <option value="opcion2">Juan Esteban Sepúlveda</option>
                                    <option value="opcion3">Daniel Camilo Pinto</option>
                                </select>
                            </div>
                            <div class="input-group mb-2">
                                <input id="admin_pass" type="password" class="input_pass input" name="admin_pass"
                                       placeholder="Contraseña">
                                <div class="line-box">
                                    <div class="line"></div>
                                </div>
                                </label>
                            </div>
                            <span toggle="#admin_pass" class="fa fa-fw fa-eye field-icon toggle-password login"></span>
                            <div class="d-flex justify-content-center mt-3 login_container">
                                <input type="hidden" name="pagina" value="admin">
                                <button type="submit" id="ValidatedForm" class="btn btn-primary">Iniciar Sesion</button>
                            </div>
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
        <script src="${pageContext.request.contextPath}/assets/js/admin.js"></script>
        <script src="https://kit.fontawesome.com/7adac5a862.js" crossorigin="anonymous"></script>
    </body>

</html>
