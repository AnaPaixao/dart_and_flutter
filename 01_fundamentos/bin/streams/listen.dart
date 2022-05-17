Future<void> main() async {
  print('Inicio');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.where((number) => number % 6 == 0).take(3);

  stream.listen((number) {
    print('Listen value: $number');
  });

  print("Fim");
}

int callback(int value) {
  print('Callback valor que chegou é $value');
  return (value + 1) * 2;
}
