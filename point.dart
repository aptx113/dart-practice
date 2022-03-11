import 'package:equatable/equatable.dart';

class Point extends Equatable {
  Point(this.x, this.y);
  final int x;
  final int y;

  Point operator +(covariant Point other) => Point(x + other.x, y + other.y);

  Point operator *(covariant int value) => Point(x * value, y * value);

  @override
  List<Object?> get props => [x, y];

  @override
  bool? get stringify => true;
}

void main(List<String> args) {
  print(Point(1, 1) + Point(2, 0));

  print(Point(2, 1) * 5);
}
