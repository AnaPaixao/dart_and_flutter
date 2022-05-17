// ignore_for_file: file_names

void main() {
  var numbers = List.generate(10, (index) => index);

  // Esse for each não deve ser utilizado em métodos async
  numbers.where((number) => number != 5).forEach((number) => print(number));
  print(numbers);

  // Transforma nossa lista em um Iterable
  final numbersAt6 = numbers
      .takeWhile((number) => number < 7)
      .where((number) => number != 5)
      .toList();
  print(numbersAt6);

  var names = ['person1', 'person2', 'person3', 'person4', 'person5'];

  final namesSkip = names.skipWhile((name) {
    if (name != 'person2') {
      return true;
    } else {
      return false;
    }
  }).toList();
  print(namesSkip);

  var numberStrList = numbers.map((number) {
    return 'Numero é $number';
  }).toList();
  print(numberStrList);

  var revertedNumbers = numbers.reversed.toList();
  print(revertedNumbers);
}
