import 'dart:math';

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  // Exercise 1: Calculate area and perimeter of a rectangle
  Rectangle rectangle = Rectangle(5, 8);
  double area = rectangle.calculateArea();
  double perimeter = rectangle.calculatePerimeter();
  print("Exercise 1: Rectangle");
  print("Area: $area");
  print("Perimeter: $perimeter");
  print("");

  // Exercise 2: Calculate total cost of a product
  Product product = Product("Widget", 10.99, 5);
  double totalCost = product.calculateTotalCost();
  print("Exercise 2: Product");
  print("Total Cost: $totalCost");
  print("");

  // Exercise 3: Calculate area of Circle and Square
  Circle circle = Circle(3);
  double circleArea = circle.calculateArea();
  print("Exercise 3: Circle");
  print("Area: $circleArea");
  print("");

  Square square = Square(4);
  double squareArea = square.calculateArea();
  print("Exercise 3: Square");
  print("Area: $squareArea");
}
