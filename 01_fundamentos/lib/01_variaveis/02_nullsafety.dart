// ignore_for_file: file_names

String superiorVariables = "";

void main() {
  // Null Safety -> É uma forma de precaver que o nosso código não vai recer uma váriavel nula.

  // Se eu colocar um ponto de interrogação na frete do tipo da minha variável
  // Eu estou afirmando para o meu sistema que aquela variável pode receber um valor nulo
  // Porém eu não vou poder chamar nenhum método da minha variável, pois ela pode ser nula
  String? completName;

  // Podemos usar um ponto de exclamação para dizer para o nosso sistema que a gente sabe que a variável é nula, porém eu estou afirmando que ela não vai ser
  print(completName!.length);

  // Variáveis locais não precisam ser inicializadas e podem ser promovidas para não nulas
  // Variáveis de nivel superior precisam ser inicializadas e não podem ser promovidas para não nulas
}
