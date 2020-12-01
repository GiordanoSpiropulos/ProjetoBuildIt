import 'package:flutter/material.dart';
import '../../../Components/DietList/DietList.dart';
import '../../../Components/AboutAlert/AboutAlert.dart';
import '../../../assets/fonts/MuscularIcon.dart';

class DietScreen extends StatefulWidget {
  @override
  _DietScreenState createState() => _DietScreenState();
}

class _DietScreenState extends State<DietScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(top: 30),
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, top: 15),
              child: Container(
                child: Text(           
                  "Dietas",
                 
                  style: TextStyle(
        
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                      Navigator.pushNamed(context, '/TrainingScreen');
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
