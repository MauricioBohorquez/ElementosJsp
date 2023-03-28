
package controladoresServlet;
import Logica.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SvUsuario extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        // en este punto simulo unos usuarios para hacer pruebas, también porque aun no estoy trabajando con base de datos 
        List<Usuario> listaUsuario = new ArrayList<>();
        listaUsuario.add(new Usuario("Mauricio", "20", "03/03/2003", "123456", "masculino", "Bogota", "136498","prueba1@gmail.com", "lila", "3", "criollo", "hembra", "canino", "negro","nutrecan"));
        listaUsuario.add(new Usuario("pedro", "35", "03/03/1988", "654895", "masculino", "Bogota", "14489479","prueba2@gmail.com", "luna", "4", "criollo", "hembra", "canino", "cafe","nutrecan"));
        listaUsuario.add(new Usuario("Marta", "40", "03/03/1983", "7432028", "femenino", "Bogota", "14564478947","prueba3@gmail.com", "lana", "6", "criollo", "hembra", "canino", "blanco","nutrecan"));
        //Aqui utilizo la clase especial Httpsession para tomar la sesion de usuario que creamos en ese momento.
        
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaUsuario", listaUsuario);
        
        response.sendRedirect("mostrarUsuarios.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String Nombre = request.getParameter("nombre");
        String Edad = request.getParameter("edad");
        String FechaNacimiento = request.getParameter("FechaNacimiento");
        String Cedula = request.getParameter("Cedula");
        String Sexo = request.getParameter("sexo");
        String CiudadResidencia = request.getParameter("ciudadResidencia");
        String Telefono = request.getParameter("Telefono");
        String Email = request.getParameter("Email");
        String name = request.getParameter("name");
        String edad = request.getParameter("Edad");
        String raza = request.getParameter("raza");
        String sexo = request.getParameter("Sexo"); 
        String tipo = request.getParameter("tipo");
        String color = request.getParameter("color");
        String alimento = request.getParameter("alimento");
        
        
        System.out.println("nombre es:" + Nombre);
            System.out.println("Edad es:" + Edad);
            System.out.println("FechaNacimiento es:" + FechaNacimiento);
            System.out.println("Cedula  es:" + Cedula);
            System.out.println("sexo es:" + Sexo);
            System.out.println("ciudadResidencia es:" + CiudadResidencia);
            System.out.println("Telefono es:" + Telefono);
            System.out.println("Email es:" + Email);
            System.out.println("name es:" + name);
            System.out.println("Edad es:" + edad);
            System.out.println("raza es:" + raza);
            System.out.println("Sexo es:" + sexo);
            System.out.println("tipo es:" + tipo);
            System.out.println("color es:" + color);
            System.out.println("alimento es:" + alimento);
            
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
