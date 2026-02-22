<%@ page import="Controller.Triangle" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
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

<%--
    -Crea un nuevo proyecto de tipo aplicación web en NetBeans.
    -En el index construye un formulario donde solicites la base y altura para un triángulo equilátero.
    -Construye una clase Java llamada triángulo, en la que codificarás los métodos necesarios para calcular el área y el perímetro de un triángulo equilátero.
        Recuerda que la base (b) es uno de los lados del triángulo y, por lo tanto, A = (b*h)/2 y P = 3*b.
    -Construye una JSP en la que recibas los datos proporcionados por el usuario, invoques a la clase triángulo para efectuar los cálculos, y muestres el resultado.
    -Haz el deployment de tu aplicación.
--%>
<h1>Calculadora de area y perimetro de triangulos equilateros</h1>
<h3>Resultados: </h3>
<%
    String baseStr = request.getParameter("base");
    String alturaStr = request.getParameter("altura");
    double area = 0;
    double perimeter = 0;

    if (baseStr != null && alturaStr != null) {
        try {
            double base = Double.parseDouble(baseStr);
            double altura = Double.parseDouble(alturaStr);

            Triangle triangle = new Triangle(base, altura);
            area = triangle.calculateArea();
            perimeter = triangle.calculatePerimeter();
        } catch (NumberFormatException e) {
            out.println("<p style='color:red;'>Por favor, ingresa valores numéricos válidos para la base y la altura.</p>");
        }
    }
%>
<p> El perimetro del triángulo equilátero es: <%= perimeter %> cm
</p>
<p> El área del triángulo equilátero es: <%= area %> cm²
</p>
</body>

</html>