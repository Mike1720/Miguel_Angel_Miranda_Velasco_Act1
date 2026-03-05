package Controller;

import Model.Triangle;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet(name = "showResults", urlPatterns = {"/showResults"})
public class showResults extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String base = request.getParameter("base");
        String altura = request.getParameter("altura");
        String name = request.getParameter("name");

        HttpSession session = request.getSession();

        // Guardar nombre solo si viene en el request
        if (name != null && !name.isEmpty()) {
            session.setAttribute("name", name);
        }

        Triangle triangle = new Triangle(
                Double.parseDouble(base),
                Double.parseDouble(altura)
        );

        triangle.calculatePerimeter();
        triangle.calculateArea();

        response.addCookie(new Cookie("base", String.valueOf(triangle.getBase())));
        response.addCookie(new Cookie("altura", String.valueOf(triangle.getHeight())));
        response.addCookie(new Cookie("perimetro", String.valueOf(triangle.getPerimeter())));
        response.addCookie(new Cookie("area", String.valueOf(triangle.getArea())));

        request.setAttribute("results", triangle);

        request.getRequestDispatcher("/showResults.jsp")
                .forward(request, response);
    }
}