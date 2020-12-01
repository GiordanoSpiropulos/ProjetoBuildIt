import 'package:flutter/material.dart';
import '../../../Components/ListCard/ListCard.dart';
import '../../../assets/fonts/MuscularIcon.dart';
import '../../../Components/AboutAlert/AboutAlert.dart';

class TrainingScreen extends StatefulWidget {
  @override
  _TrainingScreenState createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe7ecef),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 10, 15, 10),
        child: ListView(
          padding: EdgeInsets.only(top: 30),
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, top: 15),
              child: Row(
                children: [
                  Text(
                    "Treino de Peito",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RawMaterialButton(
                    fillColor: Colors.white,
                    shape: CircleBorder(),
                    child: Icon(
                      Icons.add,
                      size: 36,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/NewTrainingScreen');
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 301,
              child: renderList(context),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff003f88),
        child: Container(
          height: 75,
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    tooltip: "Treinos",
                    icon: Icon(CustomIcon.muscular, color: Colors.white),
                    iconSize: 40,
                    onPressed: () {
                      Navigator.pushNamed(context, '/TrainingInfoScreen');
                    },
                  ),
                  Text(
                    "Treino",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    tooltip: "Dietas",
                    icon: Icon(Icons.local_dining_sharp, color: Colors.white),
                    iconSize: 36,
                    onPressed: () {
                      Navigator.pushNamed(context, '/DietScreen');
                    },
                  ),
                  Text(
                    "Dieta",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    tooltip: "Sobre o Aplicativo",
                    icon: Icon(Icons.help_outline_rounded, color: Colors.white),
                    iconSize: 36,
                    onPressed: () {
                      showAlertDialog(context);
                    },
                  ),
                  Text(
                    "Sobre",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
