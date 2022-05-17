void main() {
  // Parametros Obrigatorios por default
  print('A soma de 10 + 10 é ${sun(10, 10)}');

  // Parametros Nomeados
  // Parametros nomeados são nullables por default
  // Parametros nomeados podem ser promovidos para non-null com checagem de null
  print('A soma de 10.2 + 10.2 é ${sunDouble(number1: 10.2, number2: 10.2)}');
  print('A soma de 10.4 + 10.4 é ${sunDouble(number1: 10.4, number2: 10.4)}');

  sunDoubleRequired(number1: 45, number2: 22);
  sunDoubleRequired2(number1: null, number2: 13);
  sunDoubleDefault();
  sunDoubleDefault(number1: 22);

  // Parametro Opcional - parametros são utilizados em sequencia
  sunOptional();
  sunOptional(1);
  sunOptional(34, 67);

  paramsNormalAndNomed(0, name: 'Ana Paixão', age: 22);
  paramsNormalAndNomed2(1, 'Ana', 22);

  // Parametros opcionais e nomeados precisam vim como ultimos.
}

int sun(int number1, int number2) {
  return number1 + number2;
}

double sunDouble({double? number1, double? number2}) {
  if (number1 != null && number2 != null) {
    return number1 + number2;
  }

  return 0.0;
}

double sunDoubleRequired({required double number1, required double number2}) {
  return number1 + number2;
}

double sunDoubleRequired2({required double? number1, required double number2}) {
  number1 ??= 0;

  return number1 + number2;
}

double sunDoubleDefault({double number1 = 0, double number2 = 23}) {
  return number1 + number2;
}

int sunOptional([int number1 = 0, int number2 = 0]) {
  return number1 + number2;
}

void paramsNormalAndNomed(int number,
    {required String name, required int age}) {}

void paramsNormalAndNomed2(int number, [String? name, int? age]) {}
