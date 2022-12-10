import 'dart:math';

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') {
      return Circle(4);
    } else if (type == 'square') {
      return Square(4);
    } else if (type == 'triangle') {
      return Triangle(4);
    } else {
      throw new Exception("Unknown shape");
    }
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

class Triangle implements Shape {
  final num side;
  Triangle(this.side);
  num get area => pow(side, 2) / 2;
}

void main() {
  print(Shape('circle').area);
  print(Shape('square').area);
  print(Shape('triangle').area);
}
