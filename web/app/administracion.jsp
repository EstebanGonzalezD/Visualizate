<%-- 
    Document   : administracion
    Created on : 3/06/2020, 07:00:25 AM
    Author     : Esteban
--%>

<%@page import="Entidades.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/administracion.css">
        <script type="text/javascript" src="../app/assets/js/administracion.js"></script>
    </head>
    <body>
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2> Lista de <b>Usuarios</b></h2>
                            </div>
                            
                            <div class="col-sm-6">
                                <form method="post" action="Administracion">
                                    <input type="hidden" name="pagina" value="Buscar_Usuario">
                                    <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Añadir Usuario</span></a> <span style="margin-left: 160px;"><input style="height: 35px; border-radius: 5px;" type="text" name="usuario" placeholder="Usuario"></span>
                                </form> 
                           </div>
                                 
                        </div>
                    </div>

                    <table>


                        <span class="header">Usuario</span>
                        <span class="header">Nombre_Apellido</span>
                        <span class="header">Contraseña</span>
                        <span class="header">Correo</span>
                        <span class="header">Genero</span>
                        <span class="header">Fecha_Nacimiento</span>
                        <span class="header">Puntaje</span>
                        <br><br>

                        <tr>

                            <%

                                ArrayList<Usuario> usuarios = (ArrayList<Usuario>) request.getAttribute("usuarios");

                                if (!usuarios.isEmpty()) {
                                    for (Usuario c : usuarios) {


                            %>
                        <span class="filas"><%=c.getNombre()%></span>
                        <span class="filas"><%=c.getUsuario()%></span>
                        <span class="filas"><%=c.getContraseña()%></span>
                        <span class="filas"><%=c.getCorreo()%></span>
                        <span class="filas"><%=c.getGenero()%></span>
                        <span class="filas"><%=c.getFecha()%></span>
                        <span class="filas">0</span>

                        <span>
                            <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                        </span>
                        <br><br>
                        <%

                            }

                        } else {%>
                        <p><%="Vacio"%></p>
                        <%
                            }
                        %> 

                        </tr>


                    </table>

                </div>
            </div>        
        </div>
        <!-- add Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form method="post" action="Administracion">
                        <div class="modal-header">						
                            <h4 class="modal-title">Añadir Usuario</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <input type="text" name="nombre" placeholder="Nombre"><br><br>
                            </div>
                            <div class="form-group">
                                <input type="text" name="usuario" placeholder="Usuario"><br><br>
                            </div>
                            <div class="form-group">
                                <input name="password" type="password" placeholder="Contraseña"><br><br>
                            </div>
                            <div class="form-group">
                                <input type="email" name="correo" placeholder="Correo"><br><br>
                            </div>
                            <div class="form-group">
                                <input type="date" name="fecha" placeholder="YYYY/MM/DD"><br><br>
                            </div>
                            <div class="form-group">
                                <input type="text" name="genero" placeholder="Genero"><br><br>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">
                            <input type="hidden" name="pagina" value="Agregar_Usuario">
                            <input type="submit" name="Enviar" value="Agregar">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Editar usuario Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form method="post" action="Administracion">
                        <div class="modal-header">						
                            <h4 class="modal-title">Editar Usuario</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="modal-body">	
                                <div class="form-group">
                                    <input type="text" name="cambio_usuario" placeholder="Usuario que desea Cambiar"><br><br>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="nombre" placeholder="Nombre"><br><br>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="usuario" placeholder="Usuario"><br><br>
                                </div>
                                <div class="form-group">
                                    <input name="password" type="password" placeholder="Contraseña"><br><br>
                                </div>
                                <div class="form-group">
                                    <input type="email" name="correo" placeholder="Correo"><br><br>
                                </div>
                                <div class="form-group">
                                    <input type="date" name="fecha" placeholder="YYYY/MM/DD"><br><br>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="genero" placeholder="Genero"><br><br>
                                </div>
                            </div>

                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">
                                <input type="hidden" name="pagina" value="Actualizar_Usuario">
                                <input type="submit" name="Enviar" value="Actualizar">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Delete Modal HTML -->
        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form method="post" action="Administracion">
                        <div class="modal-header">						
                            <h4 class="modal-title">Eliminar Usuario</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <p>¿Estas seguro que desear eliminarlo? <br> Por seguridad escribe el nombre del usuario
                                que deseas eliminar</p>
                            <input type="text" name="usuario" placeholder="Nombre de usuario"><br><br>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">
                            <input type="hidden" name="pagina" value="Eliminar_Usuario">
                            <input type="submit" name="Enviar" value="Eliminar">

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>


<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>



<script>
    $(document).ready(function () {
        // Activate tooltip
        $('[data-toggle="tooltip"]').tooltip();

        // Select/Deselect checkboxes
        var checkbox = $('table tbody input[type="checkbox"]');
        $("#selectAll").click(function () {
            if (this.checked) {
                checkbox.each(function () {
                    this.checked = true;
                });
            } else {
                checkbox.each(function () {
                    this.checked = false;
                });
            }
        });
        checkbox.click(function () {
            if (!this.checked) {
                $("#selectAll").prop("checked", false);
            }
        });
    });
</script>
</head>

</html>


