package Model;

public class Triangle {
    private double base;
    private double height;
    private double area;
    private double perimeter;

    public Triangle(double base, double height) {
        this.base = base;
        this.height = height;
    }

    public void calculateArea() {
        double area = base * height / 2;
        this.setArea(area);
    }

    public void calculatePerimeter() {
        double perimeter = base * 3;
        this.setPerimeter(perimeter);
    }

    public double getBase() {
        return base;
    }

    public void setBase(double base) {
        this.base = base;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public double getPerimeter() {
        return perimeter;
    }

    public void setPerimeter(double perimeter) {
        this.perimeter = perimeter;
    }
}
