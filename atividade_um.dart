import 'dart:io';
import 'dart:convert';

void main() {
  print(
      "\n-----------------------------Fatorial--------------------- - - - - - - - - - - - -");
  print("\n Digite um número:");
  var input = stdin.readLineSync();
  var aux = int.parse(input!);
  var saida = fatorial(aux);
  print("\n O fatorial de ${aux} é ${saida}");
}

int fatorial(int numero) {
  var fatorial = 1;

  for (var i = numero; i >= 1; i--) {
    fatorial *= i;
  }

  return fatorial;
}
