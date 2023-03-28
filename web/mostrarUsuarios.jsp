

<%@page import="java.util.List"%>
<%@page import="Logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Usuarios</title>
    </head>
    <body>
        <h1> Lista Usuarios Registrados</h1>
        <!-- En este punto utilice codigo de Java para traer la lista de usuarios que cree en el servlet -->
        <%
            List<Usuario> listaUsuario = (List) request.getSession().getAttribute("listaUsuario");
            int cont = 1;
            for (Usuario usu : listaUsuario){
        %>
        
               <p><b>Usuario # <%=cont%></b></p>>
               <p>nombre es: <%=usu.getNombre()%></p>
               <p>Edad es: <%=usu.getEdad()%></p>
               <p>Fecha de Nacimiento es: <%=usu.getFechaNacimiento()%></p>
               <p>Cedula  es: <%=usu.getCedula()%></p>
               <p>sexo es: <%=usu.getSexo()%></p>
               <p>ciudadResidencia es: <%=usu.getCiudadResidencia()%></p>
               <p>Telefono es:<%=usu.getTelefono()%></p>
               <p>Email es: <%=usu.getEmail()%></p>
               <p><b>Mascota </b></p>
               <p>nombre es: <%=usu.getName()%></p>
               <p>nombre es: <%=usu.getedad()%></p>
               <p>nombre es: <%=usu.getRaza()%></p>
               <p>nombre es: <%=usu.getsexo()%></p>
               <p>nombre es: <%=usu.getTipo()%></p>
               <p>nombre es: <%=usu.getColor()%></p>
               <p>nombre es: <%=usu.getAlimento()%></p>
               <p>--------------------------------------</p>
               <% cont = cont + 1;%>
               <%}%>
    </body>
</html>
