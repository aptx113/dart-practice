class Point {
  Point(this.x, this.y);
  final int x;
  final int y;

  @override
  String toString() => 'Point($x, $y)';

  @override
  bool operator ==(Object other) {
    if (other is Point) {
      return x == other.x && y == other.y;
    }
    return false;
  }

  Point operator +(covariant Point other) => Point(x + other.x, y + other.y);

  Point operator *(covariant int value) => Point(x * value, y * value);
}

void main(List<String> args) {
  print(Point(1, 1) + Point(2, 0));

  print(Point(2, 1) * 5);
}
