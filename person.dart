class Person {
  Person(this.name, this.age);
  final String name;
  final int age;

  factory Person.fromJson(Map<String, Object> json) {
    final name = json['name'];
    final age = json['age'];

    if (name is String && age is int) {
      if (name.isNotEmpty && age > 0) {
        return Person(name, age);
      } else {
        throw UnsupportedError('invalid value');
      }
    } else {
      throw UnsupportedError('invalid type');
    }
  }

  Map<String, Object> toJson() {
    if (name.isNotEmpty && age > 0) {
      return {'name': name, 'age': age};
    }
    throw UnimplementedError('Person $name not recognize');
  }
}

void main() {
  final person = Person.fromJson({'name': 'Andrea', 'age': 36});
  final json = person.toJson();
  print(json);
}
