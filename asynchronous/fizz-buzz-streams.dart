Stream<String> fizzBuzzStream() async* {
  for (var i = 1; i < 15; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    if (i % 3 == 0 && i % 5 == 0) {
      yield 'fizz buzz';
    } else if (i % 3 == 0) {
      yield 'fizz';
    } else if (i % 5 == 0) {
      yield 'buzz';
    } else {
      yield '$i';
    }
  }
}

Future<void> iterateStream(Stream<String> stream) async {
  await for (var item in stream) {
    print(item);
  }
}

Future<void> main() async {
  final stream = fizzBuzzStream();

  iterateStream(stream);
}
