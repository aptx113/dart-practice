extension IntX on int {
  List<int> rangeTo(int other) {
    if (other < this) {
      return [];
    }
    final list = <int>[];
    for (var i = this; i <= other; i++) {
      list.add(i);
    }
    return list;
  }
}

void main() {
  final list = 1.rangeTo(5);
  print(list);
}
