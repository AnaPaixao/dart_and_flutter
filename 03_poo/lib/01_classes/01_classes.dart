// ignore_for_file: file_names

import 'package:poo/01_classes/camiseta.dart';

void main() {
  var camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'Preta';
  camisetaNike.marca = 'Nike';

  print('''
  Camiseta:
    Tamanho: ${camisetaNike.tamanho}
    Cor: ${camisetaNike.cor}
    Marca: ${camisetaNike.marca}
    Tipo lavagem: ${camisetaNike.tipoDeLavagem()}

  ''');

  var camisetadidas = Camiseta();
  camisetadidas.tamanho = 'P';
  camisetadidas.cor = 'Branca';
  camisetadidas.marca = 'Adidas';

  print('''
  Camiseta:
    Tamanho: ${camisetadidas.tamanho}
    Cor: ${camisetadidas.cor}
    Marca: ${camisetadidas.marca}
    Tipo lavagem: ${camisetadidas.tipoDeLavagem()}
  ''');

  print(Camiseta.nome);
  print(Camiseta.recuperarNome());
}
