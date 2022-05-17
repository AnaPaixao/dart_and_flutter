Future<void> main() async {
  // ~CALLBACKHELL~
  // processo1().then((mensagem) {
  //   processo2()
  //       .then((mensagem) => print(mensagem))
  //       .catchError((error) => print(error));
  //   print('Mensagem é $mensagem');
  // }).catchError((error) {
  //   print(error);
  // });

  // Async Await
  print('Inicio do main');
  var mensagem = await processo1();
  print(mensagem);
  var mensagem2 = await processo2();
  print(mensagem2);
  // Utilizamos o try catch para tratar Exceptions
  try {
    await processo3();
  } on Exception catch (e) {
    print('Erro na chamada do processo três: $e');
  }
  print('Fim do main');
}

Future<String> processo1() {
  print('Processo1 inicializado');
  return Future.delayed(Duration(seconds: 3), () => 'Fim do processo P1');
}

Future<String> processo2() {
  print('Processo2 inicializado');
  return Future.delayed(Duration(seconds: 3), () => 'Fim do processo P2');
}

Future<String> processo3() {
  print('Processo3 inicializado');
  return Future.delayed(Duration(seconds: 3), () => throw Exception());
}
