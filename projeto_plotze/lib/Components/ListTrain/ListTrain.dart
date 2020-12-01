import 'dart:math';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../Controller/NewExerciseList/NewExerciseList.dart';

final firestoreInstance = FirebaseFirestore.instance;
//******************************************************************** */
//ESSA TELA RENDERIZA A LISTA DE EXERCICIOS, QUE FICA DENTRO DE UM CARD
//ELA TAMBÉM GERA TREINOS ALEATÓRIOS AO CLICAR NO BOTÃO DE MAIS, SALVAS NO FIREBASE
//******************************************************************** */
renderInfo(String exercisio, var repeticao, var serie) {
  Table listaExercicio = Table(
    defaultColumnWidth: FixedColumnWidth(100.0),
    border: TableBorder(
         verticalInside: BorderSide(
          color: Color(0xffff8800),
          style: BorderStyle.solid,
          width: 1.0,
        ),
      
    ),
    children: [
      TableRow(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              exercisio,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
             padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              repeticao.toString() + ' repetições',
               style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
             padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              'N° de séries: '+serie.toString(),
               style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
        ],
      ),
    ],
  );

  return listaExercicio;
}

renderList(var context) {
  Widget buildList = StreamBuilder<QuerySnapshot>(
    stream: firestoreInstance.collection('trainingList').snapshots(),
    builder: (context, snapshot) => snapshot.hasData
        ? ListView.builder(
            itemCount: snapshot.data.docs?.length ?? 0,
            itemBuilder: (context, index) => Container(
              width: 300,
              padding: EdgeInsets.only(left: 15),
              child: renderInfo(
                snapshot.data.docs[index].data()['Exercise'],
                snapshot.data.docs[index].data()['rep'],
                snapshot.data.docs[index].data()['series'],
              ),
            ),
          )
        : Center(
            child: CircularProgressIndicator(),
          ),
  );
  return buildList;
}

generateRandomExercise() {
  var trainingList = [
    'Flexão declinada',
    'Flexão inclinada',
    'Flexão Arco',
    'Flexão diamante',
    'Flexão imóvel'
  ];
  var rng = Random();

  var selectExercise = trainingList[rng.nextInt(5)];
  var rep = rng.nextInt(26);
  var series = rng.nextInt(5)+2;
  sendExercise(selectExercise, rep, series);
}
