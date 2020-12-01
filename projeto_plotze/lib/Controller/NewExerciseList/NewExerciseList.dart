import 'package:cloud_firestore/cloud_firestore.dart';

sendExercise(String exercicio, var rep, var series) async {
  final firestoreInstance = FirebaseFirestore.instance;

  await firestoreInstance.collection('trainingList').add({
    'Exercise': exercicio,
    'rep':rep,
    'series':series,
  });
}
