// ignore_for_file: file_names
String? completName;
int? age;

void main() {
  // Null Aware operator
  // var completNameLocal = completName ?? 'Nome não preenchido';

  // IF convercional
  if (completName != null) {
    print(completName!.toLowerCase());
  } else {
    print('Nome não preenchido');
  }

  // Conditional Property Access
  print(completName?.toUpperCase() ?? 'Nome não preenchido');
  print(age?.round() ?? 'Idade não preenchida');
}
