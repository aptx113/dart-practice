class EmailAddress {
  EmailAddress(this.email) {
    if (email.isEmpty) {
      throw FormatException();
    } else if (!email.contains('@')) {
      throw FormatException('FormatException: $email doesn\'t contain the @ symbol');
    }
  }
  final String email;
}

void main() {
  try {
    print(EmailAddress('me@example.com').email);
    print(EmailAddress('example.com'));
    print(EmailAddress(''));
  } on FormatException catch (e) {
    print(e.message);
  }
}
