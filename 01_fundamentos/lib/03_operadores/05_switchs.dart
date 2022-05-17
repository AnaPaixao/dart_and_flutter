// ignore_for_file: file_names

void main() {
  final dayOfTheWeek = 0;
  var dayOfTheWeekStr = '';
  final age = 18;

  switch (dayOfTheWeek) {
    case 0:
      dayOfTheWeekStr = 'Domingo';
      break;
    case 1:
      dayOfTheWeekStr = 'Segunda';
      break;
    case 2:
      dayOfTheWeekStr = 'Terça';
      break;
    case 3:
      dayOfTheWeekStr = 'Quarta';
      break;
    case 4:
      dayOfTheWeekStr = 'Quinta';
      break;
    case 5:
      dayOfTheWeekStr = 'Sexta';
      break;
    case 6:
      dayOfTheWeekStr = 'Sabado';
      break;
    default:
      dayOfTheWeekStr = 'Não identificado';
      break;
  }

  switch (age) {
    case 18:
    case 19:
      print('Maior de idade');
      break;
    default:
      print('Menor de idade');
      break;
  }
}
