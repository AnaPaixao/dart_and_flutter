void main() {
  // Um processo assíncrono sempre vai ocorrer em paralelo ou semi paralelo.
  // Existe dois método principais que a gente pode executar em uma função assíncrona, o catchError e o then.
  // Concluido com valor entra no -> Then, Concluido com erro entra no ->  catchError.
  // whenComplete sempre vai ser executado, independente do status.
  print('Processo inicializado');
  processo2();
  // 2 Status (Incompleto, Concluido (Com Valor, Com Erro))
  // É com o then que se recupera os nosso valores retornado pelo Future.
  processo3().then((mensagem) => print(mensagem));

  processo3()
      .then((value) => print(value))
      .whenComplete(() => print('Finalizou com sucesso'));

  // Existe maneiras de tratar um erro com o Future.
  // catchError
  processo4()
      .then(
        (mensagem) => print(mensagem),
      )
      .catchError(
        (erro) => print('Erro ao executar o processo 4'),
      )
      // Vai ser sempre executado independente se der erro ou não.
      .whenComplete(() => print('Finalizou com Erro'));

  // onError
  processo4().then(
    (mensagem) => print(mensagem),
    onError: (error) {
      print('Tratando o erro pelo OnErro do then');
    },
  );
  print('Processo finalizado');
}

Future<String> processo4() {
  print('Inicio do processo4');
  return Future.delayed(Duration(seconds: 3), () => throw Exception());
}

// Não precisamos colocar o async quando a função retorno um Future.
Future<String> processo3() {
  print('Processo3 inicializado');
  return Future.delayed(Duration(seconds: 3), () => 'Fim do processo P3');
}

Future<void> processo2() async {
  print('Inicio do processo2');
  Future.delayed(Duration(seconds: 2), () {
    var i = 0;
    while (i < 3) {
      print(i);
      i++;
    }
    print('Fim do processo2');
  });
}
