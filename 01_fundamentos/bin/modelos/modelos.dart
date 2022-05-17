// import 'package:dart_fundamentos/modelos/user_facil.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;

// import '../repositories/models/cidade.dart';

// void main() {
//   buscarCep();
//   buscarUser();
// }

// Future<void> buscarCep() async {
//   // URL BASE
//   var url = 'https://viacep.com.br/ws/01001000/json/';

//   // Buscar -> minha resposta
//   var response = await http.get(Uri.parse(url));

//   if (response.statusCode == 200) {
//     // JsonDecode -> Vai pegar a minha string e decodificar ela e retornar um objeto do tipo dinamic, no caso um map de chave e valor.
//     var responseData = convert.jsonDecode(response.body);

//     if (responseData is Map) {
//       // print(responseData['cep']);
//       // print(responseData['logradouro']);
//       // print(responseData['localidade']);

//       var cidade = Cidade.fromJson(response.body);
//       print(cidade);

//       print(cidade.toMap());
//       print(cidade.toJson());
//     }
//   }
// }

// Future<void> buscarUser() async {
//   var url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/1';

//   var response = await http.get(Uri.parse(url));

//   if (response.statusCode == 200) {
//     var user = UserFacil.fromJson(response.body);
//     print(user);
//   }
// }
