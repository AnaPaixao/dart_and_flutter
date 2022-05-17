// ignore_for_file: file_names
String? name;
void main() {
  var lastName = ' Rahman';
  var completName = (name ?? 'Rodrigo') + lastName;

  String? completName2;
  print(completName2 ?? 'Ana');
}
