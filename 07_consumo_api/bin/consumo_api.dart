import 'dart:convert';
import 'package:consumo_api/controller/alunos_controller.dart';
import 'package:consumo_api/models/telefone.dart';

void main() {
  // AlunosController().findAll();
}

void main2(List<String> arguments) {
  String cidadeJson =
      '''
    [{
      "id": 1,
      "nome": "Santo André"
    },
    {
      "id": 2,
      "nome": "São Paulo"
    }]
  ''';

  // [] => List
  // {} => Map<String, dynamic>

  final cidadeMap = json.decode(cidadeJson);

  if (cidadeMap is List) {
    print('É uma lista');
  } else if (cidadeMap is Map) {
    print('É um map');
  }

  print(cidadeMap);

  // LIST
  cidadeMap.forEach((city) => print(city['nome']));

  // MAP
  // print(cidadeMap['nome']);

  // Decode
  final cidadeMapJson = {
    'id': 123,
    'nome': "Santo André",
    'uf': 'SP',
  };

  print(json.encode([cidadeMapJson]));

  final telefoneJson =
      '''
  {
    "ddd": 11,
    "telefone": "1234567865"
  }
  ''';

  final telefone = Telefone.fromJson(telefoneJson);

  print(telefone.ddd);
  print(telefone.telefone);
}
