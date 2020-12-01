import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';

sendData(String nomeTreino, var duracaoTreino, String imagem) async {
  final firestoreInstance = FirebaseFirestore.instance;

  final CollectionReference postRef =
      firestoreInstance.collection('chestTraining');

  QuerySnapshot snapshot =
      await firestoreInstance.collection('chestTraining').get();

  postRef.doc('train' + (snapshot.docs.length + 1).toString()).set({
     "id": snapshot.docs.length + 1,
    "title": nomeTreino,
    "time": duracaoTreino,
    "imagePath": imagem,
    "kCal": '250-350',
  });
}
