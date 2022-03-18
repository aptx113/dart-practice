Future<void> countdown(int n) async {
  while (n > 0) {
    await Future.delayed(Duration(seconds: 1), () => print(n));
    --n;
  }
}

Future<void> main(List<String> args) async {
  await countdown(5);
  print('Done');
}
