import 'dart:math';

abstract class Shape {
  const Shape();
  double get area;
  double get perimeter;

  void printValues() => print('$this, area: $area, perimeter: $perimeter');

  factory Shape.fromJson(Map<String, Object> json) {
    final type = json['type'];
    switch (type) {
      case 'square':
        final side = json['side'];
        if (side is double) {
          return Square(side);
        }
        throw UnsupportedError('invalid or missing side property');
      case 'circle':
        final radius = json['radius'];
        if (radius is double) {
          return Circle(radius);
        }
        throw UnsupportedError('invalid or missing radius property');
      default:
        throw UnimplementedError('shape $type not recognized');
    }
  }
}

class Square extends Shape {
  const Square(this.side);
  final double side;

  @override
  double get area => side * side;

  @override
  double get perimeter => 4 * side;
}

class Circle extends Shape {
  const Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main(List<String> args) {
  final shapeJson = [
    {'type': 'square', 'side': 10.0},
    {'type': 'circle', 'radius': 5.0}
  ];
  final shape = shapeJson.map((shapeJson) => Shape.fromJson(shapeJson));
  shape.forEach(printArea);
}
