<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Elementos Jsp y servlets</title>
    </head>
    <body>
        <h1 align="center">Datos del Usuario</h1>
        <form method="POST" action="SvUsuario" align="center">
            <input type="text" name="nombre" placeholder="Ingresa tu nombre"/> <br><br>
            <input type="text" name="edad" placeholder="Ingresa tu edad"/><br><br>
            <input type="text" name="FechaNacimiento" placeholder="Ingresa el dia que naciste"/><br><br>
            <input type="text" name="Cedula" placeholder="Ingresa tu cedula"/><br><br>
            <input type="text" name="sexo" placeholder="Ingresa tu sexo"/><br><br> 
            <input type="text" name="ciudadResidencia" placeholder="la ciudad en que vives"/><br><br>
            <input type="text" name="Telefono" placeholder="Ingresa tu numero de tel"/><br><br>
            <input type="text" name="Email" placeholder="Ingresa tu email"/><br><br>
            <input type="text" name="name" placeholder="Ingresa el nombre de tu mascota"/><br><br>
            <input type="text" name="Edad" placeholder="Ingresa la edad de tu mascota"/><br><br>
            <input type="text" name="raza" placeholder="Ingresa la raza de tu mascota"/><br><br>
            <input type="text" name="Sexo" placeholder="Ingresa el sexo de tu mascota"/><br><br>
            <input type="text" name="tipo" placeholder="Ingresa el tipo de tu mascota"/><br><br>
            <input type="text" name="color" placeholder="Ingresa el color de tu mascota"/><br><br>
            <input type="text" name="alimento" placeholder="Ingresa el alimento de tu mascota"/><br><br>
            
            <button type="submit" >Enviar</button><br>
        </form>
        
        <h1 align="center">Ver la Lista de los usuarios</h1>
        <p align="center">de click sobre el siguente botón para ver los datos</p>
        <form action="SvUsuario" method="GET" align="center">
            <button type="submit"> Mostrar Datos </button>
            
        </form>
    </body>
</html>
