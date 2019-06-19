import 'package:flutter/material.dart';

//Método principal
void main() {
  runApp(MyApp());
  //Instanciar a Classe Pesoa
  Pessoa pessoa1 = new Pessoa();
  pessoa1.nome = "Jeferson";
  pessoa1.sexo = "M";
  pessoa1.ano_nasc = 1987;
  pessoa1.curso = "Prog. Disp. Móveis";

  //chamada de função
  pessoa1.mostrar();
  pessoa1.calcular_idade();
  bool teste  = pessoa1.mostrar_idade(pessoa1.ano_nasc);

  if(teste == true){
    print("Você já pode ser preso, parabéns.");
  }
  else{
    print("Pode tocar o terror ainda.");
  }
}

//Classe Pessoa
/*Classe MyApp
Classe é um modelo para um objeto, a planta na construção da casa,
a forma do bolo ...
*/
class Pessoa {
  //atributos da classe, características, informações que o objeto irá armazenar
  String nome;
  String sexo;
  String curso;
  int idade;
  int ano_nasc;

  void mostrar() {
    print("O indivíduo $nome realizou matrícula no curso de $curso");
  }

  void calcular_idade() {
    idade = 2019 - ano_nasc;
    if (sexo.toLowerCase() == "m") {
      print("O $nome nasceu em $ano_nasc e tem $idade anos de vida.");
    } else {
      print("A $nome nasceu em $ano_nasc e tem $idade anos de vida.");
    }
  }

  bool mostrar_idade(int ano) {
    int age = 2019 - ano;
    bool maior;

    if (age >= 18) {
      return maior = true;
    } else {
      return maior = false;
    }
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//Classe _MyAppState que herda(extends) a classe State
class _MyAppState extends State<MyApp> {
  //Interface #######################################
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exemplo de Classes e Obejetos",
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Classes e Objetos"),
          ),
        ),
      ),
    );
  }
}
