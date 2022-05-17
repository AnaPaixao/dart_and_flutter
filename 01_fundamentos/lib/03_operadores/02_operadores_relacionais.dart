// ignore_for_file: file_names
void main() {
  // Operadores relacionais
  // Temos 6 tipos

  // (Igualdade) ==
  // (Diferença) !=
  // (Maior que) >
  // (Menor que) <
  // (Maior Igual) >=
  // (Menor Igual) <=

  final age = 18;
  final tipoPet = "Gato";

  // Regra de negocio para tirar habilitação

  if (age == 18) {
    print("Pode tirar habilitação");
  }

  if (age > 17) {
    print("Pode tirar habilitação");
  }

  if (age >= 18) {
    print("Pode tirar habilitação");
  }

  if (tipoPet != 'Cachorro') {
    print("Desculpa, não temos produtos para o seu pet");
  }
}
