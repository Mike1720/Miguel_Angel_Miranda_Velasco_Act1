<%@ page import="jakarta.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calculadora de area y perimetro de triangulos equilateros</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            padding: 50px;
        }
    </style>
</head>

<body>

<h1>Calculadora de area y perimetro de triangulos equilateros</h1>

<%
    HttpSession sesion = request.getSession();
    String name = (String) sesion.getAttribute("name");
%>

<% if (name != null) { %>
<h2>Hola, <%= name %>! </h2>
<% } %>

<%
    Cookie[] cookies = request.getCookies();

    String base = null;
    String altura = null;
    String perimetro = null;
    String area = null;

    if (cookies != null) {
        for (Cookie cookie : cookies) {
            switch (cookie.getName()) {
                case "base":
                    base = cookie.getValue();
                    break;
                case "altura":
                    altura = cookie.getValue();
                    break;
                case "perimetro":
                    perimetro = cookie.getValue();
                    break;
                case "area":
                    area = cookie.getValue();
                    break;
            }
        }

        if (base != null) {
%>
<hr>
<h2>Datos del triangulo anterior:</h2>
<h3>Base: <%= base %> cm</h3>
<h3>Altura: <%= altura %> cm</h3>
<h3>Perimetro: <%= perimetro %> cm</h3>
<h3>Area: <%= area %> cm cuadrados</h3>
<%
        }
    }
%>

<hr>

<form action="showResults" method="post">

    <% if (name == null) { %>
    <label>Ingresa tu nombre:</label>
    <input type="text" name="name" required>
    <br><br>
    <% } %>

    <label>Base (cm):</label>
    <input type="text" name="base" required>
    <br><br>

    <label>Altura (cm):</label>
    <input type="text" name="altura" required>
    <br><br>

    <input type="submit" value="Calcular">

</form>

</body>
</html>