import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _frases = [
    "A persistência é o caminho do êxito.",
    "Toda ação humana, quer se torne positiva ou negativa, precisa depender de motivação.",
    "Lute, Acredite, Conquiste, Perca, Deseje, Espere, Alcance. ",
    "Invada. Caia.Seja tudo o quiser ser, mas acima de tudo, seja você sempre.",
    "Eu faço da dificuldade a minha motivação. A volta por cima vem na continuação.",
    "Pedras no caminho? Eu guardo todas. Um dia vou construir um castelo.",
    "É parte da cura o desejo de ser curado.",
    "O que me preocupa não é o grito dos maus. É o silêncio dos bons.",
  ];
  var _fraseGerada = " Clique a baixo para gerar uma nova frase";

  void _gerarFrase() {
    var numerSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numerSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          title: Text("Frases do dia"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/logo.png"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                RaisedButton(
                  child: Text(
                    "Nova frase",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  color: Colors.green[300],
                  onPressed: _gerarFrase,
                )
              ],
            ),
          ),
        ));
  }
}
