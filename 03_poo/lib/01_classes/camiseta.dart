// Public
// Private

// Caracteristicas
// Comportamentos

class Camiseta {
  // Atributos
  // Esses atributos são atributos de instancia
  // Também são atributos publicos
  String? tamanho;
  // Método privado
  String? _cor;
  String? marca;

  // Esses atributos são atributos de classe
  static const String nome = 'Camiseta';

  // Método de intância e privado
  String tipoDeLavagem() {
    if (marca == 'Nike') {
      return 'Não pode lavar na maquina';
    } else {
      return 'Pode lavar na maquina';
    }
  }

  // Métodos de classe
  static String recuperarNome() => nome;

  // GET e SET
  String? get cor => _cor;
  set cor(String? cor) {
    if (cor == 'Verde') {
      throw Exception('Não pode ser Verde');
    }
  }
}

// Classes criadas dentro do mesmo arquivo podem acessar os atributos e
// metodos privados uma da outra.
class _Camiseta2 {
  void recuperarCor() {
    var camiseta = Camiseta();
    camiseta._cor = 'Verde';
  }
}
