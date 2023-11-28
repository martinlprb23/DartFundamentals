void main() {
  print(greetEveryone());

  print('Suma: ${addTwoNumbers(10, 20)}');
  print('Suma in lamda: ${addNumbers(10, 20)}');

  print(greetPerson(name: 'Martin', message: 'Hi'));
}

String greetEveryone() {
  return ('Hello everyone!');
}

String hello() => 'Hello';

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]) {
  //b = b ?? 0;
  //b ??= 0;

  return a + b;
}

String greetPerson({required String name, String message = 'Hello,'}) {
  return '$message XD';
}
