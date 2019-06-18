import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MeuAppState();
  }
}

class _MeuAppState extends State<MeuApp> {
  double numero1;
  double numero2;
  String operacao;
  String resultado = "";

  void calcular(double novon1, double novon2, String operacao) {
    double resposta;

    if (operacao == "+") {
      resposta = novon1 + novon2;
    } else if (operacao == "-") {
      resposta = novon1 - novon2;
    } else if (operacao == "*") {
      resposta = novon1 * novon2;
    } else if (operacao == "/") {
      resposta = novon1 / novon2;
    } else {
      resposta = 0;
    }
    resultado = "O resultado da conta é: $resposta";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Minha Calculadora",
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Minha Calculadora",
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(25.0),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: <Widget>[
              Text(
                "Aqui é que vai fazer as contas!",
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Digite o primeiro número",
                  //Muda cor do texto da "dica":
                  labelStyle: TextStyle(color: Colors.black),
                  //Muda cor da linha nferior do campo:
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
                onChanged: (textoDigitado) {
                  setState(() {
                    //double.parse faz a conversão de String para double
                    numero1 = double.parse(textoDigitado);
                    print(numero1);
                  });
                },
              ),
              //Text(numero1),
              TextField(
                decoration: InputDecoration(
                  labelText: "Digite o segundo número",
                  //Muda cor do texto da "dica":
                  labelStyle: TextStyle(color: Colors.black),
                  //Muda cor da linha inferior do campo:
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
                onChanged: (textoDigitado) {
                  setState(() {
                    numero2 = double.tryParse(textoDigitado);
                    print(numero2);
                  });
                },
              ),
              //Text(numero2),
              DropdownButton<String>(
                items: [
                  DropdownMenuItem(
                    child: Text("+"),
                    value: "+",
                  ),
                  DropdownMenuItem(
                    child: Text("-"),
                    value: "-",
                  ),
                  DropdownMenuItem(
                    child: Text("*"),
                    value: "*",
                  ),
                  DropdownMenuItem(
                    child: Text("/"),
                    value: "/",
                  ),
                ],
                onChanged: (valor) {
                  setState(() {
                    operacao = valor;
                  });
                },
                hint: Text(
                  "Escolha uma operação",
                  style: TextStyle(color: Colors.black),
                ),
                value: operacao,
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                onPressed: () {
                  setState(() {});
                  calcular(numero1, numero2, operacao);
                },
                child: Text("Calcular"),
              ),
              SizedBox(height: 20.0),
              Text(resultado),
            ],
          ),
        ),
      ),
    );
  }
}
