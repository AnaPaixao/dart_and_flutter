import 'dart:io';

Future<void> main() async {
  var file = File('lib/files/file.txt');

  var fileData = file.readAsStringSync();
  print(fileData);

  var file2 = File('lib/files/file2.txt');
  await file2.writeAsString('Academia do Flutter\n', mode: FileMode.append);

  var listaNomes = ['Ana', 'Matheus', 'Alan'];
  var file3 = File('lib/files/file3.txt');
  var writeFile = file3.openWrite(mode: FileMode.append);

  for (var nome in listaNomes) {
    writeFile.write('$nome\n');
  }
}
