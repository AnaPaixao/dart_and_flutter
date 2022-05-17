void main() {
  var numbers = List.generate(12, (index) => index);
  numbers.forEach(printAcad);

  // Expanded
  // Array BiDimencional
  var list = [
    [1, 2],
    [3, 4],
  ];

  var newList = list.expand((numbers) => numbers).toList();
  print(newList);

  // Any
  print('.any');
  final findList = ['Ana', 'Clara', 'Paixão'];

  if (findList.any((name) => name == 'Clara')) {
    print('Tem Clara');
  } else {
    print('Não tem Clara');
  }

  // Every
  print('.every');
  final findList2 = ['Ana', 'Clara', 'Paixão'];

  if (findList2.every((name) => name.contains('a'))) {
    print('Todos tem a letra A');
  } else {
    print('Nem todos tem a letra A ou nenhum');
  }

  // Sort
  print('.sort');

  var listOrd = [99, 22, 10, 765, 1, 2, 3, 100, 400];
  listOrd.sort();
  print(listOrd);

  var listNames = ['Ana', 'Clara', 'Paixão'];
  listNames.sort();
  print(listNames);

  var pacientes = [
    'Ana|22',
    'Matheus|23',
    'Sandra|50',
    'Aline|28',
  ];
  pacientes.sort((paciente1, paciente2) {
    final dataPaciente1 = paciente1.split('|');
    final dataPaciente2 = paciente1.split('|');

    final agePaciente1 = int.parse(dataPaciente1[1]);
    final agePaciente2 = int.parse(dataPaciente2[1]);

    if (agePaciente1 > agePaciente2) {
      return 1;
    } else if (agePaciente1 == agePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(pacientes);

  // CompareTo
  var pacientes2 = [
    'Sandra|50',
    'Matheus|23',
    'Ana|22',
    'Aline|28',
  ];
  pacientes2.sort((paciente1, paciente2) {
    final dataPaciente1 = paciente1.split('|');
    final dataPaciente2 = paciente1.split('|');

    final agePaciente1 = int.parse(dataPaciente1[1]);
    final agePaciente2 = int.parse(dataPaciente2[1]);

    return agePaciente1.compareTo(agePaciente2);
  });
  print(pacientes2);
}

void printAcad(int value) {
  print(value);
}
