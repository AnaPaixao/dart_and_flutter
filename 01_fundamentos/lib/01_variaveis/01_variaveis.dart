// ignore_for_file: file_names

// vois main é uma função de start;
void main() {
  // Variáveis são valores, nos armazenamos valores dentro dela
  // Nós temos dois tipos de váriaveis: Numéricos e Textos
  // Numéricos -> Inteiros e Decimais

  // Estrutura básica de uma variável
  // tipo -> nome -> valor
  int age = 12;
  double price = 34.8;
  String name = "Ana";

  // As veriáveis do Dart seguem o padrão camelCase
  String thisIsCamelCase = "";

  // As variáveis numéricas herdam de num
  num number1 = 4;
  num number2 = 2.6;

  // Podemos utilizar um tipo chamado var, ele consegue identificar o tipo da variável
  var thisIsString = "Hello";
  var thisIsNumber = 14;

  // Também temos o tipo object, que seria todas as classes do nosso sistema, ou seja, todas as classes do nosos sistema herdam de object
  Object anything = "Boun Jour";
  Object anything2 = 99;
  Object anything3 = false;

  // Também temos o tipo dynamic
  dynamic anything4 = "Alright";
  dynamic anything5 = true;

  // Podemos declarar uma variável sem inicializa-lá
  String cep;
}
