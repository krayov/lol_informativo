import 'package:flutter/material.dart';
import 'package:informativo_lol/pages/page_carrinho.dart';
import 'package:informativo_lol/pages/page_ofensivos.dart';
import 'package:informativo_lol/pages/page_defensivos.dart';
import 'package:informativo_lol/pages/page_suporte.dart';
import 'package:informativo_lol/utils/nav.dart';
import 'package:informativo_lol/widgets/red_button.dart';

int conta = 0;
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "League of Legends",
        ),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return ListView(
      children: [
        Container(
          color: Colors.black,
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
          child: Container(
            //margin: EdgeInsets.only(bottom: 100),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _text("Informativo de Itens"),
                _carrossel(),
                _buttons(context),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container _carrossel() {
    return Container(
      margin: EdgeInsets.only(top: 40, bottom: 40),
      height: 300,
      child: PageView(
        children: [
          _img("assets/images/image1.jpg"),
          _img("assets/images/image3.jpg"),
          _img("assets/images/image4.jpg"),
        ],
      ),
    );
  }

  Column _buttons(context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RedButton("Ofensivos", () => _onClickNavigator(context, Ofensivos())),
            RedButton("Defensivos", () => _onClickNavigator(context, Defensivos())),
            RedButton("Suporte", () => _onClickNavigator(context, Suporte())),
            Text("-------------------------------------------------------------------------------------------------------"),
            RedButton("Finalizar Compras", () => _onClickNavigator(context, Carrinho())),

          ],
        ),
      ],
    );
  }

  void _onClickNavigator(BuildContext context, Widget page) async {
    String s = await push(context, page);

    print(">> $s");

    conta = conta + int.parse(s);


    print(conta);


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

  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,

    );
  }



}
