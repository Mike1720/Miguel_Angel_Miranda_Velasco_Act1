package Controller;

public class Triangle {
    private double base;
    private double height;

    public Triangle(double base, double height) {
        this.base = base;
        this.height = height;
    }

    public double calculateArea() {
        return base * height / 2;
    }

    public double calculatePerimeter() {
        return base * 3;
    }
}
