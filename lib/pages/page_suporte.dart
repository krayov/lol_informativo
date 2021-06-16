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

class Suporte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Itens de Suporte"),
      ),
      body: _body(),
    );
  }

  //padrão: Item("", "assets/images/image.png", "", "", ""),

  _body() {
    List<Item> items = [
      Item("Convergência de Zeke", "assets/images/image11.png", "+250 vida \n+25 armadura \n+250 mana \n+20 aceleração de habilidade", "CONVERGENCE: Imobilizar campeões inimigos os marca por 8 segundos. Os ataques básicos do seu companheiro e acertos de habilidade contra inimigos marcados causam 30 - 70 (com base no nível) (+ 7,5% AP) (+ 1,5% de saúde máxima) de dano mágico bônus.", "2400"),
      Item("Medalhão dos Solari de Ferro", "assets/images/image12.png", "+200 vida \n+20 aceleração de habilidade \n+30 armadura \n+30 resistência mágica", "CONSECRATE: Concede aos campeões aliados próximos 5 bônus de armadura e 5 bônus de resistência mágica.", "2500"),
      Item("Hino Bélico de Shurelya", "assets/images/image13.jpg", "+40 poder de habilidade \n+200 vida \n+20 aceleração de habilidade \n100% regeneração da mana base", "MOTIVAÇÃO: Cura, blindagem de resistências híbridas ou buffar um campeão aliado (excluindo você) concede a vocês 25% de bônus de velocidade de movimento por 1,5 segundos (4 (por campeão) segundos de cooldown).", "2500"),
      Item("Mandato Imperial", "assets/images/image14.png", "+40 poder de habilidade, +200 vida \n+20 aceleração de habilidade \n100% regeneração da mana base", "COORDINATED FIRE: Habilidades que reduzem a velocidade de movimento ou imobilizam campeões inimigos causam 36 - 60 (com base no nível) de dano mágico adicional e os marca por 4 segundos. Campeões aliados que causam dano a inimigos marcados consomem a marca para causar 90-150 (com base no nível do aliado) de dano mágico adicional e conceder a você e ao aliado desencadeador 20% de velocidade de movimento de bônus por 2 segundos (6 (por campeão, começa na aplicação da marca) segundos de cooldown).", "2500"),
      Item("Regenerador de Pedra Lunar", "assets/images/image15.png", "+40 poder de habilidade \n+200 vida \n+20 aceleração de habilidade \n100% regeneração da mana base", "STARLIT GRACE: Ao afetar campeões com ataques ou habilidades em combate, cura o campeão aliado próximo (excluindo você) com a maior falta de vida em 70 (2 segundos de recarga). Cada segundo gasto em combate com campeões concede 6% de poder de cura e escudo, acumulando até 5 vezes e no máximo 30%.", "2500"),
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
          fontWeight: FontWeight.w700,
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
