import 'package:flutter/material.dart';

//Método principal
void main() => runApp(MyApp());

//Classe MyApp
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
