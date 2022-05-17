// import 'package:dart_fundamentos/interfaces/gol.dart';

// import 'carro.dart';

// void main() {
//   Carro golCarro = Gol();

//   // Quando checamos se a variável é(is) de um tipo
//   // Caso ela seja o dart vai automaticamente converter
//   // essa instancia para a classe do Tipo

//   if (golCarro is Gol) {
//     golCarro.tipoDeRodas();
//   }

//   // Não precisamos utilizar dessa forma
//   var tipoDeRodas = (golCarro as Gol).tipoDeRodas();
//   print(tipoDeRodas);
// }

// void printarDadosDoCarro(Carro carro) {
//   print(''''
//     Carro:
//       Tipo: ${carro.runtimeType}
//       Portas: ${carro.portas}
//       Rodas: ${carro.rodas}
//       Motor: ${carro.motor}
//       Valocidade Máxima: ${carro.velocidadeMaxima()}
//       Tipo de Rodas: ${carro is Gol ? carro.tipoDeRodas() : 'Indisponivel'}
//   ''');
// }
