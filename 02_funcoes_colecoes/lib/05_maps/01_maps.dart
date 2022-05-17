void main() {
  // O mapa é uma representação de CHAVE:VALOR
  final pacient = <String, String>{
    'nome': 'Ana Paixão',
    'cursos': 'Academia do Flutter'
  };

  // O mapa pode ser nulo, mas se for criado deve conter a chave
  // e o valor não nulos
  Map<String, String>? pacientNullSafety = null;

  // O map e o valor não podem ser nulos mas a chave pode ser nula
  var pacientNullSafety2 = <String?, String>{null: 'Ana Paixão'};

  // O map e a chave não podem ser nulos mas a valor pode ser nulo
  var pacientNullSafety3 = <String, String?>{'nome': null};

  var products = <String, String>{};
  // Só será adicionado se a chave não existir
  products.putIfAbsent('name', () => 'Água');
  print(products);

  // Atualiza
  products.update('name', (value) => 'Suco');
  print(products);
  products.update('price', (value) => '10', ifAbsent: () => '10');

  // Recuperar o valor
  print('Produto ${products['name']}');
  print('Preço ${products['price']}');

  products.forEach((key, value) {
    print('Chave: $key: $value');
  });

  for (var entry in products.entries) {
    print('Chave: ${entry.key}: ${entry.value}');
  }

  for (var key in products.keys) {
    print('Chave: $key');
  }

  for (var value in products.values) {
    print('Chave: $value');
  }

  var newMapProducts = products.map((key, value) {
    return MapEntry(key + '_new', value.toUpperCase());
  });
  print(newMapProducts);

  var map = <String, Object>{
    'nome': 'Ana Paixão',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Curso Flutter',
      },
      {
        'nome': 'Arquiteto Flutter',
        'descricao': 'Curso Flutter',
      }
    ]
  };
}
