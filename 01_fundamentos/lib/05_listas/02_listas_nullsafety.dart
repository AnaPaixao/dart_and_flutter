// ignore_for_file: file_names
void main() {
  // Nullable (Aceita nulo) = ?
  // non-null (Não aceita nulo) = Sem nada (Padrão)

  // Não aceita nulo
  var names = <String>[];

  // Aceita nulo
  List<String>? nullNames;

  // Lista não pode ser nula e nem os itens
  var internalNamesNonNull = ['Rodrigo'];

  // Lista não pode ser nula mas os items internos podem ser nulos
  var internalNamesNullable = <String?>['Rodrigo', null, 'Thiago'];

  // Lista pode ser nula e os itens também podem ser nulos
  List<String?>? internalNamesNullable1 = null;
}
