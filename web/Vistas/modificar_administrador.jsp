<%-- 
    Document   : modificar_administrador
    Created on : 08-10-2018, 22:44:26
    Author     : Berni
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="../Menú/menuSuperU.jsp"></jsp:include>
            <div class="row centered-form" >
                <div class="col-xs-12 col-sm-8 col-md-5 col-sm-offset-2 col-md-offset-4">
                    <div class="panel panel-default">

                        <div class="panel-body" style="margin-left: 100%;">

                            <form action="procesoSuperUsuario" method="GET">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>Usuario</td>
                                            <td><input type="text" name="txtUSer" value=""></td>
                                        </tr>
                                        <tr>
                                            <td>Contraseña</td>
                                            <td><input type="text" name="txtPass" value=""></td>
                                        </tr>
                                        <tr>
                                            <td>Tipo de Usuario</td>
                                            <td>
                                                <select name="cboTipo" id="cboTipo" class="form-control">
                                                <c:forEach var="usuario" items="${usuarios.rows}">
                                                    <option value="${usuario.tipo}">${usuario.descripcion_tipo}</option>
                                                </c:forEach>
                                            </select>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Estado del Usuario</td>
                                        <td>
                                            <select name="cboEstado" id="cboEstado" class="form-control">
                                                <c:forEach var="usuario" items="${usuarios.rows}">
                                                    <option value="${usuario.estado}">${usuario.descripcion}</option>
                                                </c:forEach>
                                            </select>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="submit" name="btnAccion" value="Modificar" class="boton"></td> 
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
                </body>
                </html>
