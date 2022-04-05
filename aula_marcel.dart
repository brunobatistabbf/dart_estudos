import 'dart:io';

void main() {
  var nome = "Marcel";
  int idade = 30;

  print("O nome do usuário ${nome.toUpperCase()} e a idade é ${idade + 10}");

  //Number
  double nota = 5.6;
  print("CEIL: ${nota.ceil()}");
  print("FLOOR: ${nota.floor()}");
  print("ROUND: ${nota.round()}");
  print("TRUNCATE: ${nota.truncate()}");

  //STRING
  String teste = "Marcel               Melo           ";
  String nomes = "Marcel, José, Maria, João, Marcos";
  print("String original: $teste");
  print("TRIM: ${teste.trim()}");
  print("REPLACE: ${nomes.replaceAll("Ma", "H")}");
  print("SPLIT: ${nomes.split(", ")}");

  //LIST
  List<int> lista1 = [];
  lista1.add(1);
  lista1.add(2);
  lista1.add(3);

  print("Lista[0] = ${lista1[0]}");

  List<int> lista2 = [4, 5, 6];

  List<int> lista3 = [...lista1, ...lista2];
  print("Lista concatenada ${lista3}");

  //MAP
  var listaMap = lista3.map((int elemento) => elemento * 2);
  print("Lista Map ${listaMap}");

  // var listaMap2 = [];
  // for (int i = 0; i < lista3.length; i++) {
  //   listaMap2.add(lista3[i] * 2);
  // }

  //Reduce
  int valorReduce = lista3.reduce(
      (int resultadoParcial, int elemento) => resultadoParcial + elemento);
  print("Reduce : ${valorReduce}");

  // int resultado = 0;
  // for (int i = 0; i < lista3.length; i++) {
  //   resultado = resultado + lista3[i];
  // }

  //WHERE
  var listaFiltrada = lista3.where((int elemento) => elemento.isOdd);
  print("Pares: ${listaFiltrada}");

  // var listaMap2 = [];

  // for (int i = 0; i < lista3.length; i++) {
  //   if(lista3[i].isEven){
  //     listaMap2.add(lista3[i];)
  //   }
  // }

  //Tipo de Dados MAP
  Map<String, dynamic> objJson = {"nome": "Marcel", "idade": 30};
  objJson["cidade"] = "Morrinhos";

  print("Objeto Json: $objJson");
  print("Chaves: ${objJson.keys}");
  print("Values: ${objJson.values}");
  print("Chave inexistente: ${objJson.containsKey('estado')}");
  print("Chave existente: ${objJson.containsKey('cidade')}");

  var resultado = somar(1, 2, n4: 4, n3: 3);
  print("Resultado: ${resultado}");

  var sub = (n1, n2, n3, n4) {
    return n1 - n2 - n3 - n4;
  };

  int resultadoSub = sub(10, 3, 2, 1);
  print("Resultado Sub: ${resultadoSub}");

  print("Jogador: ${nomeJogador(null)}");
  print("Jogador: ${nomeJogador("Marcel")}");

  print("Digite seu nome: ");
  var input = stdin.readLineSync();
  print("Bem vindo ao mundo Flutter ${input}");
}

int somar(int n1, int n2, {int n3 = 0, int n4 = 0}) {
  return n1 + n2 + n3 + n4;
}

String nomeJogador(String? nome) {
  return nome ?? "Visitante";
}
