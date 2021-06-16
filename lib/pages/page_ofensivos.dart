import 'package:flutter/material.dart';
import 'package:informativo_lol/widgets/red_button.dart';


class Item {
  String nome;
  String foto;
  String atributos;
  String descricao;
  String preco;

  Item(this.nome, this.foto, this.atributos, this.descricao, this.preco);
}

class Ofensivos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Itens Ofensivos"),
      ),
      body: _body(),
    );
  }

  _body() {
    List<Item> items = [
      Item("Colhedor Noturno", "assets/images/image1.png", "+90 poder de habilidade \n+300 de vida \n+15 aceleração de habilidade","SOULREND: Danificar um campeão inimigo causa 125 (+ 15% AP) de dano mágico adicional e concede a você 25% de velocidade de movimento de bônus por 1,5 segundos, com a duração se estendendo ao causar dano a novos campeões (40 (por campeão) segundos de cooldown).", "3200"),
      Item("Limite da Razão", "assets/images/image2.png", "+30 dano de ataque \n40% velocidade de ataque \n+50 resistência mágica","FRAY: Ataques básicos causam 15 - 80 (com base no nível) de dano mágico bônus ao acertar e concedem a você 20 bônus de velocidade de movimento por 2 segundos.", "3100"),
      Item("Tormenta de Luden", "assets/images/image3.png", "+80 poder de habilidade \n+6 penetração mágica \n+600 mana \n+20 aceleração de habilidade","ECHO: Dano de habilidade a um inimigo causa 100 (+ 10% AP) de dano mágico adicional ao seu alvo e lança setas em até 3 inimigos próximos a eles, causando o mesmo dano, e concede a você 15% de velocidade de movimento bônus por 2 segundos . Causar dano de habilidade contra campeões reduz o cooldown do Echo em 0,5 segundos por campeão, até um máximo de 3 segundos por lançamento (10 segundos de cooldown).", "3400"),
      Item("Mandíbula de Malmortius", "assets/images/image4.png", "+50 dano de ataque \n+50 resistência mágica \n+15 aceleração de habilidade","LIFELINE: Se você recebesse dano mágico que o reduziria a menos de 30% de sua saúde máxima, primeiro você ganha um escudo de resistências híbridas que absorve 200 (+ 20% de vida máxima) de dano mágico por 5 segundos (60 segundos cooldown).", "3100"),
      Item("Espada do Rei Destruído", "assets/images/image5.png", "+40 dano de ataque \n+25% velocidade de ataque \n+12% roubo de vida","MIST'S EDGE: Ataques básicos causam 10% do bônus de saúde atual do alvo de dano físico ao atingir, com um mínimo de 15 contra todas as unidades e um máximo de 60 contra lacaios e monstros\n\nSIPHON: Ataques básicos ao acertar contra campeões inimigos aplicam um stack por 6 segundos, acumulando até 3 vezes. O terceiro stack consome todas os stacks para causar 40 - 150 (com base no nível) de dano mágico bônus ao acertar e diminui a velocidade do alvo em 25% por 2 segundos, enquanto concede a você 25% de velocidade de movimento de bônus pela mesma duração (20 segundos de cooldown).", "3200"),
    ];

    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, int index) {

          Item item = items[index];

          return Stack(
            children: [
              Column(
                children: [
                  _text(item.nome),
                  _img(item.foto),
                  _text2(item.atributos),
                  Text(
                    "PASSIVO ÚNICO:",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),),
                  _text2(item.descricao),
                  _text1("Preço:"),
                  _text3(item.preco),
                  RedButton("Adicionar ao Carrinho", () => Navigator.pop(context, item.preco)),
                  Text("----------------------------------------------------------------------------------------------------------")
                ],

              )
            ],
          );

        });
  }

  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,

    );
  }
  _text(texto) {
    return Container(
      padding: const EdgeInsets.only(bottom: 40, top: 20),
      child: Text(
        texto,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  _text1(texto) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        texto,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.red[800],
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  _text2(texto) {
    return Container(
      padding: const EdgeInsets.only(top: 25, bottom: 25),
      child: Text(
        texto,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.red[800],
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  _text3(texto) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 30),
      child: Text(
        texto,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

}
