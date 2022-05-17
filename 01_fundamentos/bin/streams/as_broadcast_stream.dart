Future<void> main() async {
  print('Inicio');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.asBroadcastStream();

  stream.listen((number) {
    print('Listen 1 value: $number');
  });

  stream.listen((number) {
    print('Listen 2 value: $number');
  });

  print("Fim");
}

int callback(int value) {
  print('Callback valor que chegou é $value');
  return (value + 1) * 2;
}
