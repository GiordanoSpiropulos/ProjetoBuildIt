import 'package:flutter/material.dart';

class TrainingInfoScreen extends StatefulWidget {
  @override
  _TrainingInfoScreenState createState() => _TrainingInfoScreenState();
}

class _TrainingInfoScreenState extends State<TrainingInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          padding: EdgeInsets.fromLTRB(10, 50, 10, 20),
          children: [
            Column(
              children: [
                Container(
                  child: Text(
                    "Nome do exercicio     N° Repetições     N° Séries",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  child: Text(
                    "Nome do exercicio     N° Repetições     N° Séries",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  child: Text(
                    "Nome do exercicio     N° Repetições     N° Séries",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  child: Text(
                    "Nome do exercicio     N° Repetições     N° Séries",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  padding: EdgeInsets.only(bottom: 10),
                ),
              ],
            ),

            Container(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                color: Color(0xffff8800),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Text(
                  "Avançar",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff003f88),
      ),
    );
  }
}
