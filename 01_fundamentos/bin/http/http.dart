// // import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;

// Future<void> main() async {
//   // await buscarCep();
//   // await buscarPosts();
//   // await buscarCepError();
//   // await salvarPost();
//   await atualizarPost();
// }

// Future<void> atualizarPost() async {
//   var url = 'https://jsonplaceholder.typicode.com/posts/1';

//   var mapaRequest = {
//     'id': 1,
//     'title': 'Post alterado',
//     'body': 'Descrição do post',
//     'userId': 1,
//   };

//   // var response = await http
//       .put(Uri.parse(url), body: convert.jsonEncode(mapaRequest), headers: {
//     'Content-type': 'application/json; charset=UTF-8',
//   });

//   // print(response.statusCode);
//   // print(response.body);
// }

// Future<void> salvarPost() async {
//   var url = 'https://jsonplaceholder.typicode.com/posts/';

//   var mapaRequest = {
//     'title': 'Post novo',
//     'body': 'Descrição do post',
//     'userId': 1,
//   };

//   var response =
//       await http.post(Uri.parse(url), body: convert.jsonEncode(mapaRequest));

//   print(response.statusCode);
//   print(response.body);
// }

// Future<void> buscarPosts() async {
//   var url = 'https://jsonplaceholder.typicode.com/posts/';
//   var response = await http.get(Uri.parse(url));

//   if (response.statusCode == 200) {
//     var responseData = convert.jsonDecode(response.body);

//     if (responseData is List) {
//       for (var el in responseData) {
//         print(el.message);
//       }
//     }
//   }
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
//       print(responseData['cep']);
//       print(responseData['logradouro']);
//       print(responseData['localidade']);
//     }
//   }
// }

// Future<void> buscarCepError() async {
//   // URL BASE
//   var url = 'https://viacep.com.br/ws/9999999/json/';

//   // Buscar -> minha resposta
//   var response = await http.get(Uri.parse(url));

//   if (response.statusCode == 200) {
//     var responseData = convert.jsonDecode(response.body);

//     if (responseData is Map) {
//       print(responseData['cep']);
//       print(responseData['logradouro']);
//       print(responseData['localidade']);
//     }
//   } else {
//     print('Ocorreu um erro: ${response.reasonPhrase}');
//   }
// }
