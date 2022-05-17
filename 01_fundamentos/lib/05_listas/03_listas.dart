// ignore_for_file: file_names

void main() {
  // Adicionar um item no array
  final numbers = [1, 2, 3, 4];
  numbers.add(1);
  print(numbers);

  // Adiconar um array dentro do array
  numbers.addAll([5, 6, 7, 8]);

  // Acessar um item pelo index
  final names = ['Gustavo', 'Marcelo', 'Bianca'];
  print(names[2]);

  // Adicionar um item pelo index especifico
  names.insert(0, 'Bruna');
  print(names);

  // Adicionar um array em um index especifico
  names.insertAll(2, ['Juliana', 'Catia']);

  // Remover um item do array
  names.remove('Marcelo');

  // Remover itens que satisfazem uma condição
  numbers.removeWhere((number) => number < 4);
  print(numbers);

  // Pegar o ultimo item da minha lista
  print(numbers.last);
  print(names.last);

  // Pegar o primeiro item que satisfas uma condição
  print(names.firstWhere((name) => name.length == 5));

  // Pegar o ultimo item que satisfas uma condição
  print(numbers.lastWhere((number) => number % 2 == 0));

  // Gerar listas
  final generatedNumbers = List.generate(10, (index) => index + 1);
  print(generatedNumbers);

  // Gerar uma lista de repetições
  final repetitions = List.filled(10, 'Rodrigo');
  print(repetitions);

  // Gerar uma lista com uma equação
  final generatedNumbers1 = List.generate(20, (index) => index + 1);
  var sun = generatedNumbers1.fold<int>(
      0, (previousValue, number) => previousValue += number);
  print(sun);

  // Spread operator (...)
  var spreadNumbersList1 = [4, 5, 6];

  var spreadNumbersList = [1, 2, 3, ...spreadNumbersList1];
  print(spreadNumbersList);

  // Collection if
  var isPromotionActive = true;

  var products = {
    'Refrigerante',
    'Biscoito',
    if (isPromotionActive) 'Suco de Laranja',
  };
  print(products);

  // Collection for
  var intsList = [1, 2, 3];
  var stringsList = ['#0', for (var i in intsList) '#i'];
  print(stringsList);
}
