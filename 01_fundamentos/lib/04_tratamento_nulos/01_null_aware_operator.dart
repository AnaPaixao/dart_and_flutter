// ignore_for_file: file_names
String? name;

void main() {
  // OPÇÕES

  // Primeira
  var completName = (name != null) ? name! + ' Rahman' : 'Rodrigo Rahman';
  print(completName);

  // Segunda
  String completName2;
  if (name != null) {
    completName2 = name! + ' Rahman';
  } else {
    completName2 = 'Rodrigo Rahman';
  }
  print(completName2);

  // Terceira
  var localName = name;
  if (localName == null) {
    localName = 'Rodrigo';
  }
  var completName3 = localName + ' Rahman';
  print(completName3);
}
