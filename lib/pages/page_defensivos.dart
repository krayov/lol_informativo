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

class Defensivos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Itens Defensivos"),
      ),
      body: _body(),
    );
  }

  //padrão: Item("", "assets/images/image.png", "", "", ""),

  _body() {
    List<Item> items = [
      Item("Manopla do Raio de Gelo", "assets/images/image6.png", "+350 vida \n+25 armadura \n+25 resistência mágica \n+20 aceleração de habilidade","IMMOLATE: Receber ou causar dano ativa este passivo por 3 segundos. Causa 12 - 30 (com base no nível) (+ 1% de bônus de saúde) de dano mágico a cada segundo aos inimigos dentro do Alcance de 325 (+ 100% de tamanho de bônus) unidades, aumentado em 25% contra lacaios e 150% contra monstros.", "2800"),
      Item("Placa Gargolítica", "assets/images/image7.png", "+60 armadura \n+60 resistência mágica \n+15 aceleração de habilidade", "FORTIFY: Aumente sua armadura bônus e resistência mágica bônus em 5% por 6 segundos quando um campeão causar dano a você, acumula até 5 vezes para um máximo de 25%. Isso acumula uma vez por campeão único.", "3300"),
      Item("Armadura de Espinhos", "assets/images/image8.png", "+350 vida \n+60 armadura", "THORNS: Quando atingido por um ataque básico, ao acertar, causa 10 (+ 10% de armadura de bônus) de dano mágico ao atacante e, se ele for um campeão, ele é aflingido com 40% de Feridas Dolorosas por 3 segundos. Imobilizar campeões inimigos também causa 60% de Feridas Dolorosas por 3 segundos.", "2700"),
      Item("Coração Congelado", "assets/images/image9.png", "+70 armadura \n+400 mana \n+20 aceleração de habilidade", "ROCK SOLID: Cada instância de entrada de dano básico pós-mitigação é reduzida em 7 (+ 3,5 por 1000 pontos de vida máximos), redução máxima de 40% cada.", "2500"),
      Item("Sinal de Sterak", "assets/images/image10.png", "+50 dano de ataque \n+400 vida", "BLOODLUST: Depois de causar dano ou receber dano de um campeão inimigo, cura 2% do máximo de saúde ao longo de 6 segundos. Isso acumula e atualiza por campeão único, até 5 vezes, mas cada stack além da primeira é reduzida em 50%, para um máximo de cura para 6% do máximo de saúde ao longo a duração.", "3100"),
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
