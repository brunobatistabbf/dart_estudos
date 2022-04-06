import 'dart:io';

void main() {
  var quantidade = 0;
  var maior = 0;
  var menor = 0;
  var media = 0;

  print("\nDigite quantos numeros Quiser");
  print("---------------------------------------------");
  print("\nPare quando digitar -1");
  print("---------------------------------------------");
  print("\nDigite:");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero == -1) {
    print("Encerrando programa... Número -1 digitado.");
  }

  while (numero != -1) {
    media += numero;
    quantidade++;

    if (quantidade == 1) {
      maior = numero;
      menor = numero;
    }

    if (numero > maior) {
      maior = numero;
    }

    if (numero < menor) {
      menor = numero;
    }

    numero = int.parse(stdin.readLineSync()!);
  }

  print("Quantidade de números: ${quantidade}");
  print("Maior número: ${maior}");
  print("Menor número: ${menor}");
  print("Média dos números: ${(media / quantidade).floor()}");
}
