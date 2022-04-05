import 'dart:io';

void main() {
  print(
      "------------------------CAIXA ELETRONICO--------------------------------- - - - - - - - - - - ");
  print("\n Digite o valor que deseja sacar: ");
  var aux = stdin.readLineSync();
  var valorCliente = int.parse(aux!);

  var nota50 = 50;
  var nota10 = 10;
  var nota5 = 5;
  var nota1 = 1;

  if (valorCliente != null) {
    if (valorCliente >= nota50) {
      nota50 = (valorCliente / 50).floor();
      valorCliente = valorCliente % 50;
      print("São ${nota50} notas de 50; ");
    }

    if (valorCliente >= nota10) {
      nota10 = (valorCliente / 10).floor();
      valorCliente = valorCliente % 10;
      print("São ${nota10} notas de 10; ");
    }

    if (valorCliente >= nota5) {
      nota5 = (valorCliente / 5).floor();
      valorCliente = valorCliente % 5;
      print("São ${nota5} notas de 5; ");
    }

    if (valorCliente >= nota1) {
      nota1 = (valorCliente / 1).floor();
      valorCliente = valorCliente % 1;
      print("São ${nota1} nota(s) de 1; ");
    }
  }
}
