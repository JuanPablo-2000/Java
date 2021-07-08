package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SesionesServlet")
public class SesionesServlet extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession sesion = request.getSession();
        String titulo = null;
        
        //Pedir el atributo contador visitas a la sesion
        Integer contadorVisitas = (Integer) sesion.getAttribute("contadorVisitas");
        
        //Si es nulo es la primera vez que accedemos a la aplicacion
        if(contadorVisitas == null) {
            contadorVisitas = 1;
            titulo = "Bienvenido por primera vez";
        }
        else {
            contadorVisitas++;
            titulo = "Bienvenido Nuevamente";
        }
        
        //Agregamos el nuevo valor a la sesion
        sesion.setAttribute("contadorVisitas", contadorVisitas);
        
        //Mandamos la respuesta al cliente
        PrintWriter out = response.getWriter();
        
        out.print(titulo);
        out.print("<br>");
        out.print("no. Accesos al recurso: " + contadorVisitas);
        out.print("<br>");
        out.print("ID de la sesión: " + sesion.getId());
        out.close();
    }
}