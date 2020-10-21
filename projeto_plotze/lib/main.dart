import 'package:flutter/material.dart';
import 'Screens/Login/loginScreen/loginScreen.dart';
import 'Screens/Training/trainingScreen/trainingScreen.dart';
import 'Screens/About/aboutScreen/AboutScreen.dart';
import 'Screens/Training/trainingInfoScreen/trainingInfoScreen.dart';
import 'Screens/Diet/dietScreen/dietScreen.dart';
import 'Screens/Diet/dietInfoScreen/dietInfoScreen.dart';

void main() {
  runApp(MaterialApp(
    title: "Build It",
    debugShowCheckedModeBanner: false,
    initialRoute: "/Login",
    theme: ThemeData(
      primaryColor: Color(0xffff8800),
    ),
    routes: {
      '/Login': (context) => Login(),
      '/TrainingScreen': (context) => TrainingScreen(),
      '/TrainingInfoScreen': (context) => TrainingInfoScreen(),
      '/DietScreen': (context) => DietScreen(),
      '/DietInfoScreen': (context) => DietInfoScreen(),
      '/AboutScreen': (context) => AboutScreen(),
    },
  ));
}
