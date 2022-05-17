void main() {
  print('Iniciou o processo');
  var i = 0;
  while (i < 20) {
    print(i);
    i++;
  }
  p2();

  m2();
  print('finalizou');
}

void m2() {
  print('função2');
}

void p2() {
  // Tudo que é assíncrono é representado pela classe Future
  Future.delayed(
    Duration(seconds: 2),
    () {
      print('Processo p2 executado');
    },
  );
}
