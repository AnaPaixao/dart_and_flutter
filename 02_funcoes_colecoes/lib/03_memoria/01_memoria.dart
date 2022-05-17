void main() {
  var list = ['Ana'];
  print(list.hashCode);
  print(list);

  func(list);
  print(list);

  var name = 'Ana Paixão';
  print(name);

  func2(name);
  print(name);
  print(name.hashCode);

  var lists = ['Rodrigo'];
  print(lists);
  add(lists);

  var productList = ['Pão'];
  print(productList);
  var value = calcProducts(productList);
  print(value);
  print(productList);
}

int calcProducts(List<String> products) {
  products.clear();
  return 10;
}

void func2(String name) {
  name += ' Academia do Flutter';
  print(name);
  print(name.hashCode);
}

void func(List<String> names) {
  if (names.isNotEmpty) {
    names.add('Paixão');
  }
}

List<String> add(List<String> names) {
  var newNames = [...names];
  newNames.add('Rodrigo Rahman');
  return newNames;
}
