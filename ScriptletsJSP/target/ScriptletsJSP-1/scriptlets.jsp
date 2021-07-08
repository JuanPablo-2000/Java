<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP con Scriptlets</title>
    </head>
    <body>
        <h1>JSP con Scriptlets</h1>
        <br>
        <%-- Scriptlets para enviar información al navegador --%>
        <% 
            out.print("Saludos desde un scriptlets");
        %>
        <%-- Scriptlets para manipular los objetos implicitos --%>
        <% 
            String nombreAplicacion = request.getContextPath();
            out.print("Nombre de la aplicación: " + nombreAplicacion);
        %>
        <br>
        <%-- Scriptlet con codigo condicionado --%>
        <%
            if(session != null && session.isNew()) {
                
        %>
        La sesión es nueva
        <%
            } else if(session != null) {
        
        %>
        La sesión no es nueva
        <% } %>
        <br>
        <a href="index.html">Regresar al inicio</a>
    </body>
</html>
