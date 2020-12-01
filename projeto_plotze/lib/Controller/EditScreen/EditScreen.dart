import 'package:cloud_firestore/cloud_firestore.dart';

updateData(String nomeTreino, var duracaoTreino, String imagem, var id) async {
  final firestoreInstance = FirebaseFirestore.instance;

  

  firestoreInstance
      .collection('chestTraining')
      .doc('train' + id.toString())
      .update({
    "title": nomeTreino,
    "time": duracaoTreino,
    "imagePath": imagem,
    "kCal": '250-900',
  });
}
