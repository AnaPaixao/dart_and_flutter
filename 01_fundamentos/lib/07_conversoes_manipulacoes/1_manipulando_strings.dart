void main() {
  final name = 'Ana Paixão';

  // Quebra minha strings em caracteres e retorna o numero indicado em diante
  var subStringName = name.substring(7);
  print(subStringName);

  // Idem -> Porém aqui podemos escolher o inicio e o fim
  var subStringName2 = name.substring(0, 7);
  print(subStringName2);

  var sexo = 'Feminino';
  var sexoSigla = sexo.substring(0, 1);
  if (sexoSigla == 'F') {
    print('Olá, seu sexo é feminino');
  }

  // Outra maneira de fazer
  // Compara se o valor que passamos começa com a condição que escolhemos
  if (sexo.startsWith('Femin')) {
    print('Olá, seu sexo é feminino');
  }

  // A mesma coisa, porém colocamos no minusculo primeiro
  if (sexo.toLowerCase().startsWith('MASC')) {
    print('Olá, seu sexo é masculino minusculo');
  }

  // Verifica se contêm o valor que passamos
  if (name.contains('Paixão')) {
    print('É da familia Paixão');
  }

  // INTERPOLAÇÃO

  // MANEIRA 1
  var firstName = 'Ana';
  var lastName = 'Paixão';
  var salute = 'Olá ' + firstName + ' ' + lastName + ' seja muito bem vindo';
  print(salute);

  // MANEIRA 2
  var salute2 = 'Olá $firstName $lastName seja muito bem vindo';
  print(salute2);

  // Utilizando a variável com métodos
  print('Soma de 2 + 2 é ${2 + 2}');
  print('Olá, ${firstName.toLowerCase()}');

  // SPLIT

  var paciente = 'Ana Paixão|22|Estudante|RJ';
  var dadosPaciente = paciente.split('|');
  print(dadosPaciente);
  for (var dado in dadosPaciente) {
    print(dado);
  }

  var pacientes = [
    'Ana Paixão|22|Estudante|RJ',
    'Matheus Caldeira|23|Estudante|RJ',
    'Alan Freitas|22|Estudante|RJ'
  ];

  for (paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    print(dadosPaciente[0]);
  }

  // ultimo nome do paciente
  for (paciente in pacientes) {
    var dadosSeparados = paciente.split('|');
    var nomePaciente = dadosSeparados[0];
    var nomeSeparado = nomePaciente.split(' ');
    print(nomeSeparado.last);
  }
}
