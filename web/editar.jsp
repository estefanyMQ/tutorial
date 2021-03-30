<%-- 
    Document   : editar
    Created on : 30-03-2021, 12:43:13 AM
    Author     : RonaldMollericona
--%>

<%@page import="com.emergentes.modelo.Persona"%>
<%
   Persona reg = (Persona)request.getAttribute("miobjper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de persona</h1>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" readonly="readonly" value="<%= reg.getId()%>"></td>
                </tr>
                <tr>
                    <td>Nombres</td>
                    <td><input type="text" name="nombres" value="<%= reg.getNombres()%>"></td>
                </tr>
                <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="apellidos" value="<%= reg.getApellidos()%>"></td>
                </tr>
                <tr>
                    <td>Edad</td>
                    <td><input type="number" name="edad" value="<%= reg.getEdad()%>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
