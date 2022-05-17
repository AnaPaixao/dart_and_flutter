//Isso aqui é uma class abstrata
// pois tem métodos implementados
abstract class CadeiraAbstrata {
  void tipoDeMaterial() {}
}

// Isso aqui é uma interface
// Pois não tem nenhum método implementado
abstract class Carro {
  abstract int portas;
  abstract int rodas;
  abstract String motor;
  int velocidadeMaxima();
}
