import 'package:flutter/material.dart';


class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 10, top: 25, right: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage:
                      AssetImage("lib/assets/img/GiordanoPerfil.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Olá! Seja bem vindo(a)",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 340,
                  child: Text(
                    "Meu nome é Giordano Cerioni Spiropulos Gonçalves, e a minha idéia é desenvolver um aplicativo que auxilie pessoas na pratica de atividades físicas. A idéia é que o usuário selecione o como ele treina (treino em casa, em academia, corrida). A partir disso, o aplicativo irá dispor as melhores opções para o usuário, como exercícios, uma lista de dietas entre outras funcionalidades. O aplicativo também fará uso de processamento de imagem, a fim de ajudar no posicionamento de certos exercícios.  ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: IconButton(
                    icon: Icon(
                      Icons.keyboard_return,
                      size: 36,
                    ),
                    onPressed: () {
                      Navigator.pop(context, false);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
