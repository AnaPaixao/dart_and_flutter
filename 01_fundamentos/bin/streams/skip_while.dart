Future<void> main() async {
  print('Inicio');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5).skipWhile((numero) {
    print("Numero que chegou na stream $numero");
    return numero < 5;
  });

  await for (var i in stream) {
    print(i);
  }
}

int callback(int value) {
  return (value + 1) * 2;
}
