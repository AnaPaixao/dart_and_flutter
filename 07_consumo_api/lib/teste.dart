import 'package:consumo_api/curso.dart';

void main() {
  var fruits = [
    Fruit('banana'),
    Fruit('abacaxi'),
    Fruit('laranja'),
  ];

  var fruitsMap = [
    {'name': 'banana'},
    {'name': 'abacaxi'},
    {'name': 'laranja'},
  ];

  // Caso a gente soubesse o que viria no array
  // var juice = Juice(flavor: fruits[0].name);

  // Quando eu preciso varrer meu array para transforma-ló em outra coisa
  // FOR IN
  // List<Juice> juices = [];
  // for (var fruit in fruits) {
  //   final juice = Juice(flavor: fruit.name);
  //   juices.add(juice);
  // }

  // MAP
  var juices = fruits.map((fruit) => Juice(flavor: fruit.name)).toList();

  var juices2 = fruitsMap
      .map((fruitMap) => Juice(flavor: fruitMap['name'] ?? 'Sem sabor'))
      .toList();

  print(juices);
  print(juices2);

  var alunoAdf = <String, Object>{
    'nome': 'Ana Paixão',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Curso de Flutter',
      },
      {
        'nome': 'Imersão GetX',
        'descricao': 'Imersão em GetX',
      },
      {
        'nome': 'Imersão Código Limpo',
        'descricao': 'Imersão em Código Limpo',
      }
    ]
  };

  // final cursosMap = alunoAdf['cursos'] as List<Map<String, String>>;
  // final cursos = cursosMap.map((curso)  {

  //   var nome = curso['nome'] as String;
  //   var descricao = curso['descricao'] as String;

  //   return Curso(nome: nome, descricao: descricao)
  // });
}

class Juice {
  String flavor;
  Juice({
    required this.flavor,
  });

  @override
  String toString() => 'Suco sabor $flavor';
}

class Fruit {
  String name;
  Fruit(this.name);
}
