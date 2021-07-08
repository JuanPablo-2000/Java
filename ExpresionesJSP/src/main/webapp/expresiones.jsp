<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSPs con expresiones</title>
    </head>
    <body>
        <h1>JSP con expresiones</h1>
        Concatenacion: <%= "Saludos" + " " + "JSP" %>
        <br>
        Operación Matematica: <%= 2*3 / 2 %>
        <br>
        Sesión id: <%= session.getId() %>
        <br>
        <br>
        <a href="index.html">Regresar al Inicio</a>
    </body>
</html>
