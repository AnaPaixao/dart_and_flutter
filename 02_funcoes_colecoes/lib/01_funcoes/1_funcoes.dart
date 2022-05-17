// Uma função tem sempre 3 estruturas
// - O tipo de retorno
// - o nome da função
// - os parametros
void main() {
  final calc = sun(10, 10);
  print('A soma de dois inteiros é $calc');
}

int sun(int number1, int number2) {
  print('Executando a soma de inteiros');
  return number1 + number2;
}
