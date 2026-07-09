

int asciiToDecimal(String ascii) {
  int decimalValue = 0;
  for (int i = 0; i < ascii.length; i++){
    decimalValue += ascii.codeUnitAt(i);
  }
  return decimalValue;
}

int decimalToBinary(int decimal) {
  if (decimal == 0) return 0;

  String binary = '';
  while (decimal > 0) {
    binary = (decimal % 2).toString() + binary;
    decimal ~/= 2;
  }
  return int.parse(binary);
}

void main() {
  print(asciiToDecimal("h"));
  print(decimalToBinary(72));
  
}