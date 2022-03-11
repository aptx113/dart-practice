class Animal {
  const Animal({required this.age});
  final int age;

  void sleep() => print('sleep');
}

class Cat extends Animal {
  Cat({required int age}) : super(age: age);

  void meow() => print('meow');

  @override
  void sleep() {
    super.sleep();
    print('sleep more');
  }
}

class Cow extends Animal {
  Cow({required int age}) : super(age: age);

  void moo() => print('moo');
}
