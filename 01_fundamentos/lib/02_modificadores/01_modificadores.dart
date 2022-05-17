// ignore_for_file: file_names

void main() {
  // Uma forma de alterar como uma variável pode ser criada

  String name = "Ana";
  print(name);

  name = "Paixão";
  print(name);

  // MODIFICADORES: [IMUTABILIDADE] [UTILIZAR SEM MODERAÇÃO]

  // Final -> O valor da variável não pode ser alterado em Runtime.
  final completName = "Test";

  // Erro
  // completName = "Test teste";

  // Const -> O valor da variável não pode ser alterado em compilação.
  const age = 5;
}
