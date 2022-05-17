// ignore_for_file: file_names

void main() {
  // Operadores Lógicos

  // (E)   &&
  // (OU)  ||
  // (Não) !

  final gender = 'M';
  final age = 18;

  // Ambas as condições precisam ser verdadeiras
  if (gender == 'M' && age == 18) {
    print('Pode entrar');
  } else {
    print('Não pode entrar');
  }

  // Apenas uma das condições precisa ser verdadeira
  if (gender == 'M' || age >= 18) {
    print('Pode entrar');
  } else {
    print('Não pode entrar');
  }

  // É o inverso da condição
  if (!(gender == 'M' || age >= 18)) {
    print('Não pode entrar');
  } else {
    print('Pode entrar');
  }
}
