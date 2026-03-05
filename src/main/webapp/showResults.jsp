<%@ page import="Model.Triangle" %>
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

<h1>Calculadora de area y perimetro de triangulos equilateros</h1>
<h3>Resultados: </h3>
<%

    Triangle triangle = (Triangle) request.getAttribute("results");

%>
<p> El perimetro del triángulo equilátero es: <%= triangle.getPerimeter() %> cm
</p>
<p> El área del triángulo equilátero es: <%= triangle.getArea() %> cm²
</p>
<a href="index.jsp">Realizar calculo de otro triangulo</a>
</body>

</html>