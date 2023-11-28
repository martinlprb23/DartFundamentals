void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('Lista original $numbers');
  print('Length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');

  final reversedNums = numbers.reversed; //Iterable ()
  print('Iterable: $reversedNums');
  print('List: ${reversedNums.toList()}');
  print('Set: ${reversedNums.toSet()}'); //Quita duplicados {}

  final numbersGreateerThan5 = numbers.where((int num) {
    return num > 5; // true
  });

  print('>5 Iterable: ${numbersGreateerThan5}');
  print('>5 Set: ${numbersGreateerThan5.toSet()}');
}
