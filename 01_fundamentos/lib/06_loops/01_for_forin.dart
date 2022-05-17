// ignore_for_file: file_names

void main() {
  var numbers = List.generate(10, (index) => index);
  var names = ['Ana', 'Matheus', 'Alan', 'Guilherme'];

  print('Imprimindo numeros com for convencional');
  for (var i = 0; i < numbers.length; i++) {
    print(numbers[1]);
  }

  print('Imprimindo nomes com for convencional');
  for (var i = 0; i < names.length; i++) {
    print(numbers[1]);
  }

  print('imprimindo numeros com for-in');
  for (var number in numbers) {
    print(number);
  }

  print('imprimindo nomes com for-in');
  for (var name in names) {
    print(name);
  }

  print('imprimindo nomes com for convencional e break');
  for (var i = 0; i < names.length; i++) {
    print(names[i]);
    if (names[i] == 'Guilherme') {
      break;
    }
  }

  print('imprimindo nomes com for in e break');
  for (var number in numbers) {
    print(number);
    if (number == 7) {
      break;
    }
  }

  print('imprimindo nomes com for convencional e continue');
  for (var i = 0; i < names.length; i++) {
    if (i == 1 || i == 3) {
      continue;
    }
    print(names[i]);
  }

  // Collections for
  print('Collection for');
  var listaInts = [1, 2, 3];
  var listaString = ['#0', '#01', for (var i in listaInts) '#$i'];
  print(listaString);
}
