import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
  AlertDialog alerta = AlertDialog(
    title: Text("Sobre o Aplicativo"),
    content: Text("Clique 'Okay' para abrir a tela de sobre"),
    actions: [
      FlatButton(
          onPressed: () {
            Navigator.pop(context, false);
          },
          child: Text("Cancel")),
      FlatButton(
          onPressed: () {
            Navigator.pop(context, false);
            Navigator.pushNamed(context, '/AboutScreen');
          },
          child: Text("Okay"))
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}