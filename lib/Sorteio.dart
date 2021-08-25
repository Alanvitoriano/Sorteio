import 'package:flutter/material.dart';

class Sorteio extends StatefulWidget {
  String Valor;
  Sorteio(this.Valor);
  @override
  _SorteioState createState() => _SorteioState();
}

class _SorteioState extends State<Sorteio> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagen = "imagens/0.png";

    if (widget.Valor == "um") {
      caminhoImagen = "imagens/1.png";
    } else if (widget.Valor == "dois") {
      caminhoImagen = "imagens/2.png";
    } else if (widget.Valor == "tres") {
      caminhoImagen = "imagens/3.png";
    } else if (widget.Valor == "quatro") {
      caminhoImagen = "imagens/4.png";
    } else if (widget.Valor == "cinco") {
      caminhoImagen = "imagens/5.png";
    } else if (widget.Valor == "seis") {
      caminhoImagen = "imagens/6.png";
    } else if (widget.Valor == "sete") {
      caminhoImagen = "imagens/7.png";
    } else if (widget.Valor == "oito") {
      caminhoImagen = "imagens/8.png";
    } else if (widget.Valor == "nove") {
      caminhoImagen = "imagens/9.png";
    } else {
      caminhoImagen = "imagens/10.png";
    }
    return Scaffold(
      backgroundColor: Color(0xffB8860B),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(caminhoImagen),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset("imagens/b.png", width: 150, height: 100),
            )
          ],
        ),
      ),
    );
  }
}
