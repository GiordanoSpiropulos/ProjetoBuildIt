import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import "package:firebase_core/firebase_core.dart";

checkLogin(String userEmail, String userPassword, BuildContext context) async {
  await Firebase.initializeApp();
  final firestoreInstance = FirebaseFirestore.instance;

  try {
    QuerySnapshot snapshot = await firestoreInstance
        .collection('users')
        .where('userEmail', isEqualTo: userEmail)
        .get();

    if (snapshot.docs.isEmpty) {
    } else {
      snapshot.docs.forEach((item) {
        var password = item.data()['password'];
        if (password == userPassword)
          Navigator.pushNamed(context, '/TrainingScreen');
        else {}
      });
    }
  } catch (e) {}
}
