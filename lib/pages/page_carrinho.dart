import 'package:flutter/material.dart';
import 'package:informativo_lol/home_page.dart';

class Carrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: _body(),
    );
  }

  _printLista() {

  }

  _body() {
    return ListView(
      children: [
        _text("Preço Final: $conta"),
      ],
    );
  }
  _text(texto) {
    return Container(
      padding: const EdgeInsets.only(bottom: 40, top: 20),
      child: Text(
        texto,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.red[800],
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
