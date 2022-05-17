// ignore_for_file: file_names

void main() {
  // Condições para as nossas regras de negocio
  final age = 18;

  // Idade é maior que 18 para ter habilitação

  if (age > 18) {
    print("Pode tirar habilitação");
  } else if (age == 18) {
    print("Também pode tirar habilitação");
  } else {
    print("Não pode tirar habilitação");
  }
}
