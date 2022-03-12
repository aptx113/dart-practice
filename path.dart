import 'dart:math';

class ClosedPath {
  List<Point> _point = [];

  void moveTo(Point point) {
    _point = [point];
  }

  void lineTo(Point point) {
    _point.add(point);
  }
}

void main() {
  final path = ClosedPath()
    ?..moveTo(Point(0, 0))
    ..lineTo(Point(2, 0))
    ..lineTo(Point(2, 2))
    ..lineTo(Point(0, 2))
    ..lineTo(Point(0, 0));
}
