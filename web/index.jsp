<%-- 
    Document   : index
    Created on : 11/03/2019, 09:17:51 PM
    Author     : daniel rueda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de sesion</title>
    </head>
    <body style="background: black; color: white; text-align: center">
        <h1>Inicio de Sesion</h1>
        <br>
        <br>
        <br>
        <form action="iniciar" method="post">
            <label>Usuario: </label>
            <br>
            <input type="text" placeholder="Ingrese el usuario" name="usuario">
            <br>
            <br>
            <br>
            <label>Contraseña: </label>
            <br>
            <input type="password" placeholder="Ingrese la contraseña" name="contrasena">
            <br>
            <br>
            <br>
            <input type="submit" value="Ingresar">
        </form>
    </body>
</html>
