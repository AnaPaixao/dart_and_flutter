// abstract -> É uma classe modelo para os objetos instanciados, percebemos isso porque
// existe um método calcularIdadeHumana que não está implementado
// deixando para o objeto implementar.

// Então classes abstratas são classes que contem  um ou mais métodos que não
// possuem uma implementação, ou seja, um método abstrato
abstract class Animal {
  String? tamanho;
  final int idade;
  int? baseDeIdadeHumana;

  Animal({required this.idade});

  int recuperarIdade() {
    return idade;
  }

  int calcularIdadeHumana();
}
