import 'package:flutter/material.dart';
import '../../../Components/ListTrain/ListTrain.dart';

class TrainingInfoScreen extends StatefulWidget {
  @override
  _TrainingInfoScreenState createState() => _TrainingInfoScreenState();
}

class _TrainingInfoScreenState extends State<TrainingInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 30, 30),
            alignment: Alignment.centerRight,
            child: RawMaterialButton(
              fillColor: Color(0xffff8800),
              shape: CircleBorder(),
              child: Icon(Icons.add, size: 30, color: Colors.white),
              onPressed: () {
                generateRandomExercise();
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 500,
       
            child: renderList(context),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff003f88),
      ),
    );
  }
}
