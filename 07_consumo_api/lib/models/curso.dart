import 'dart:convert';

class Curso {
  int id;
  String nome;
  bool isAluno;

  Curso({
    required this.id,
    required this.nome,
    required this.isAluno,
  });

  Map<String, dynamic> toMap() {
    return {'id': id, 'nome': nome, 'isAluno': isAluno};
  }

  factory Curso.fromMap(Map<String, dynamic> map) {
    return Curso(
      id: map['id'],
      nome: map['nome'],
      isAluno: map['isAluno'],
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Curso.fromJson(String json) => Curso.fromMap(jsonDecode(json));

  @override
  String toString() => 'Curso(id: $id, nome: $nome, isAluno: $isAluno)';
}
