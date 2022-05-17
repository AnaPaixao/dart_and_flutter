import 'dart:convert';

class Cidade {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ddd;
  Cidade({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ddd,
  });

  // CRIAMOS UM TIPO CIDADE BASEADO EM UM MAP
  // CONSTRUTOR
  // RECEBE UM MAP E TRANSFORMA NO NOSSO MODELO DE CIDADE
  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      complemento: map['complemento'] ?? '',
      bairro: map['bairro'] ?? '',
      localidade: map['localidade'] ?? '',
      uf: map['uf'] ?? '',
      ddd: map['ddd'] ?? '',
    );
  }

  // PODEMOS UTILIZAR DE DUAS MANEIRAS

  // 1
  // factory Cidade.fromJson(String source) {
  //   var jsonMap = jsonDecode(source);
  //   return Cidade.fromMap(jsonMap);
  // }

  //2
  // CONSTRUTOR
  // O FROMJSON RECEBE UM SOURCE QUE É UMA STRING JSON E TRANSFORMA EM UMA CIDADE, FAZENDO UM JSON DECODE
  factory Cidade.fromJson(String source) => Cidade.fromMap(jsonDecode(source));

  // Metodo da minha instância caso eu queira transformar em algo
  // Vou pegar a minha instancia e transformar me um mapa
  Map<String, dynamic> toMap() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'ddd': ddd
    };
  }

  // PEGA NOSSA INSTANCIA E TRANSFORMA EM UM MAPA E CODIFICA PARA UM JSON
  String toJson() => jsonEncode(toMap());

  @override
  String toString() {
    return 'Cidade(cep: $cep, logradouro: $logradouro, complemento: $complemento, bairro: $bairro, localidade: $localidade, uf: $uf, ddd: $ddd)';
  }
}

// {
//   "cep": "01001-000",
//   "logradouro": "Praça da Sé",
//   "complemento": "lado ímpar",
//   "bairro": "Sé",
//   "localidade": "São Paulo",
//   "uf": "SP",
//   "ibge": "3550308",
//   "gia": "1004",
//   "ddd": "11",
//   "siafi": "7107"
// }
