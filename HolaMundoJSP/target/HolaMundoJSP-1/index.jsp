<%-- 
    Document   : index
    Created on : 6/07/2021, 5:31:06 p. m.
    Author     : juan
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>HolaMundo JSPs</title>
    </head>
    <body>
        <h1>HolaMundo JSPs</h1>
        <ul>
            <li> <% out.print("HolaMundo con Scriplets"); %> </li>
            <li> ${"Hola Mundo con Expression Language (EL)"} </li>
            <li> <%= "Hola Mundo con Expresiones" %> </li>
            <li> <c:out value="HolaMundo con JSTL" /> </li>
            
        </ul>

    </body>
</html>
