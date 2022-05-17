void main() {
  // Funcoes Arrow - OK
  print(sunInt(10, 20));

  // Funcoes Anonimas
  var anyFunction = () {
    print('Chamou a função da variavel');
    return '1999';
  };
  () {
    print('');
  }();

  print(anyFunction());

  callFunction(
    ({name = ''}) {
      if (name.isEmpty) {
        print('Nome veio vazio');
      } else {
        print(name);
      }
    },
  );

  print('Chamada finalizada');
}

// funções - 3 partes
// retorno
// nome
// parametros -> (normais, nomeadas e opcionais)

// Arrow Function
int sunInt(int number1, int number2) => number1 + number2;

// Typedef -> Tipo definido
void callFunction(Function({String name}) functionReciveName) {
  var calc = 1 + 1;
  var completName = 'Ana Paixão';

  print(calc);
  functionReciveName(name: completName);
}

void callFunction1(FunctionReciveName functionReciveName) {
  var calc = 1 + 1;
  var completName = 'Ana Paixão';

  print(calc);
  functionReciveName(name: completName);
}

void callFunction2(FunctionReciveName functionReciveName) {
  var calc = 1 + 1;
  var completName = 'Ana Paixão';

  print(calc);
  functionReciveName(name: completName);
}

// ALIAS
typedef FunctionReciveName = void Function({String name});
