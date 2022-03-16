class Credentials {
  const Credentials({this.email = '', this.password = ''});
  final String email;
  final String password;

  Credentials copyWith({String? email, String? password}) => Credentials(
      email: email ?? this.email, password: password ?? this.password);

  @override
  String toString() => 'Credentials($email,$password)';
}

void main() {
  const crednetials = Credentials();

  final update1 = crednetials.copyWith(email: 'aptx113@gmail.com');
  print(update1);
  final update2 =
      crednetials.copyWith(email: 'aptx113@gmail.com', password: '1qaz@WSX');
  print(update2);
}
