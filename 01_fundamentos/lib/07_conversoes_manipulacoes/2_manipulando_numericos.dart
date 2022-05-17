void main() {
  final age = 22;

  print('Sua idade é $age');

  final value = -20;

  if (value.isNegative) {
    print(value);
  }

  final doubleValue = 10.58;

  print(doubleValue.round());
  print(doubleValue.roundToDouble());

  // Conversão de textos para numeros
  final valueString = '30';

  final valueInt = int.parse(valueString);
  final valueInt2 = int.tryParse(valueString);
  print(valueInt);
  print(valueInt2);

  final price = 30.344502;
  print(price.toStringAsFixed(2).toString().replaceAll('.', ','));
}
