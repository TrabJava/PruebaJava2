<%-- 
    Document   : agregar_administrador
    Created on : 07-10-2018, 20:23:23
    Author     : Berni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="../Menú/menuSuperU.jsp"></jsp:include>
        <div class="row centered-form">
            <div class="row">
                <form action="procesoSuperUsuario" method="GET">
                    <div class="row">
                        <div class="col-xs6 col-sm6 col-sm5">
                            <div class="form-group">
                                <input type="text" name="txtNombreUsuario" placeholder="Nombre de usuario">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs6 col-sm6 col-sm5">
                            <div class="form-group">
                                <input type="password" name="txtPass" placeholder="********">
                            </div>
                        </div>
                    </div>
                    <input type="submit" name="btnAccion" value="Agregar" class="boton">
                </form>
                
            </div>

        </div>


    </body>
</html>
