<%-- 
    Document   : listar_admin
    Created on : 07-10-2018, 20:30:55
    Author     : Berni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--Para hacer una Consulta directa a la bbd--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%--Iniciamos la conexion a la bbd--%>
        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                           url = "jdbc:mysql://localhost:3306/liga_nos_vamos?zeroDateTimeBehavior=convertToNull"
                           user = "mojaber_ali"  password = "12345"/>

        <%--Query para mostrar los datos en la lista--%>
        <sql:query dataSource = "${snapshot}" var = "admin">
            SELECT * FROM super_usuario su
            JOIN tipo_super tu ON su.id=tu.id 
            JOIN estado_super es ON su.id = es.id  
            WHERE su.id=2  ;
        </sql:query>
        <jsp:include page="../Menú/menuSuperU.jsp"></jsp:include>


            <div>
                <div class="row">
                    <div class="col-lg-1">
                    </div>

                    <div class="col-lg-4">
                        <table>
                            <tr>
                                <th>ID USUARIO</th>
                                <th>NOMBRE DE USUARIO</th>
                                <th>PASS</th>
                                <th>TIPO DE USUARIO</th>
                                <th>ESTADO </th>
                            </tr>
                            
                        <c:forEach var = "row" items = "${admin.rows}">
                            <form action="procesoSuperUsuario" method="GET">
                                <td><input name="txtId" type="text" readonly="" value="${row.id}"></td>
                                <td><input name="txtNombre" type="text" readonly="" value="${row.user}"></td>
                                <td><input name="txtPassword" type="text" readonly="" value="${row.pass}"></td>
                                <td><input name="txtDescripcionTipo" type="text" readonly="" value="${su.super_usuario.tipo}">${tu.descripcion}></td>
                                <td><input name="txtDescripcionEstado" type="text" readonly="" value="${su.super_usuario.estado}">${es.descripcion}"></td>
                            </form>
                        </c:forEach>

                        </table>    
                    </div>
                    <div class="col-lg-3">
                    </div>
                </div>
            </div>


        </body>
    </html>
