import 'dart:math';

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

class Triangle extends Shape {
  double base;
  double height;

  Triangle(this.base, this.height);

  @override
  double area() {
    return 0.5 * base * height;
  }
}

void main() {
  Map<String, Shape> shapes = {
    "Circle": Circle(5),
    "Rectangle": Rectangle(10, 4),
    "Triangle": Triangle(6, 8),
  };

  shapes.forEach((name, shape) {
    print("$name Area = ${shape.area()}");
  });
}