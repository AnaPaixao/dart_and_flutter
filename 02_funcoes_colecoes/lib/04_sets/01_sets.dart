void main() {
  var numberList = <int?>[];
  numberList.add(1);
  numberList.add(2);
  numberList.add(3);
  numberList.add(null);
  numberList.add(3);
  numberList.add(2);
  numberList.add(1);
  print(numberList);

  // Não permite valores duplicados
  var numbersSet = <int?>{};
  numbersSet.add(1);
  numbersSet.add(2);
  numbersSet.add(3);
  numbersSet.add(null);
  numbersSet.add(3);
  numbersSet.add(2);
  numbersSet.add(1);
  print(numbersSet);

  // Pegar uma lista e transformar em um set
  print(numberList.toSet());

  numbersSet.forEach(print);

  // Consegue trazer as diferencas entre listas
  var numbers1 = {1, 2, 3, 4, 5, 6};
  var numbers2 = {1, 3, 4, 7};
  print(numbers1.difference(numbers2));
  print(numbers2.difference(numbers1));

  // Uniar duas listas
  print(numbers1.union(numbers2));

  // Faz a interseção
  print(numbers1.intersection(numbers2));

  // Com nomes
  var names1 = {'Ana', 'Matheus', 'José', 'Fernanda'};
  var names2 = {'Matheus', 'Carolina', 'Bernardo', 'Fernanda'};
  print(names2.intersection(names1));

  // Lookup -> Busca dados
  print(numbers1.lookup(9));
  print(names2.lookup('Bernardo'));
}
