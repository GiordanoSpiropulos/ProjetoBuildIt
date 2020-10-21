import 'package:flutter/material.dart';



class DietInfoScreen extends StatefulWidget {
  @override
  _DietInfoScreenState createState() => _DietInfoScreenState();
}

class _DietInfoScreenState extends State<DietInfoScreen> {
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
                    "Prato 1         Selecionar",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  child: Text(
                    "Prato 2         Selecionar",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  child: Text(
                    "Prato 3         Selecionar",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  child: Text(
                    "Prato 4         Selecionar",
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
                  "Modo de preparo",
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