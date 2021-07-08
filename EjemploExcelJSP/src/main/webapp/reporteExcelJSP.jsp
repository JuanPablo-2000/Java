<%@page errorPage="/WEB-INF/manejoErrores.jsp" %>
<%@page import="utilerias.Conversiones, java.util.Date" %>
<%@page contentType="application/vnd.ms-excel" %>
<% 
    String nombreArchivo = "reporte.xlm";
    response.setHeader("Content-Disposition", "inline;filename=" + nombreArchivo);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte Excel</title>
    </head>
    <body>
        <h1>Reporte Excel</h1>
        <br>
        <table border="1">
            <tr>
                <th>Curso</th>
                <th>Descripcion</th>
                <th>Fecha</th>
            </tr>
            <tr>
                <td>1. Fundamentos de Java.</td>
                <td>2. Aprendemos la sintaxis basica de Java</td>
                <td>3. <%= Conversiones.format("500") %></td>
            </tr>
            <tr>
                <td>4. Programación con Java.</td>
                <td>5. Pondremos en practica conceptos de la programación orientada a objetos</td>
                <td>6. <%= Conversiones.format("456") %></td>
            </tr>
        </table>
    </body>
</html>
