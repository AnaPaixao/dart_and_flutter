import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;

  Telefone({
    required this.ddd,
    required this.telefone,
  });

  // É um método que pega o objeto (Telefone) e transforma em um Map<String,dynamic>
  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'telefone': telefone,
    };
  }

  // É um CONSTRUTOR que pega um MAP e transforma em um objeto telefone
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd'] ?? 0,
      telefone: map['telefone'] ?? '',
    );
  }

  // É um método que retorna uma String Json do meu objeto Telefone
  String toJson() => jsonEncode(toMap());

  // É um método que baseado em uma String Json retorna um objeto Telefone
  // factory Telefone.fromJson(String json) {
  //   Map<String, dynamic> jsonMap = jsonDecode(json);
  //   final telefone = Telefone.fromMap(jsonMap);
  //   return telefone;
  // }

  // Forma mais otimizada do toJson
  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));

  @override
  String toString() => 'Telefone(ddd: $ddd, telefone: $telefone)';
}
