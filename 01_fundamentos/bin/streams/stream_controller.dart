import 'dart:async';

Future<void> main() async {
  print('Inico Stream Controller');
  // Controlador da stream
  final streamController = StreamController<int>.broadcast();

  // Entrada - Enviar dados para stream
  final inStream = streamController.sink;

  // Saida - Dados que irão retonar da stream
  final outStream = streamController.stream;

  outStream
      .skip(1)
      .where((number) => number % 2 == 0)
      .map((number) => 'O Valor par enviado é $number')
      .listen((strConvert) => print('String recebida $strConvert'));

  List<int> numbers = List.generate(20, (index) => index);

  for (var number in numbers) {
    print('Enviando número $number');
    inStream.add(number);
    await Future.delayed(Duration(milliseconds: 500));
  }

  print('Fim Stream Controller');

  await streamController.close();
}
