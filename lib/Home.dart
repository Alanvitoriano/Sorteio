import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sorteio/Sorteio.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _sortear() {
    var itens = [
      "um",
      "dois",
      "tres",
      "quatro",
      "cinco",
      "seis",
      "sete",
      "oito",
      "nove",
      "dez"
    ];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Sorteio(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB8860B),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            GestureDetector(
              onTap: _sortear,
              child: Image.asset("imagens/sorteio.png"),
            )
          ],
        ),
      ),
    );
  }
}
