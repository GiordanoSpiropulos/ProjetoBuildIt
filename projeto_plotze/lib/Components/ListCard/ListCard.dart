import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//***************************************************************************/
//ESSA TELA RENDERIZA OS CARDS DE EXERCICIOS
//****************************************************************************/
final firestoreInstance = FirebaseFirestore.instance;

renderCard(var id, var pathImage, var title, var time, var kcal, var context,
    var length, var index) {

  Card renderedCard = Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: GestureDetector(
      onTap: () {

        Navigator.pushNamed(
          context,
          '/TrainingInfoScreen',
        );
      },
      onLongPress: () {
        Navigator.pushNamed(context, '/EditTrainingScreen', arguments: id.toString());
      },
      child: Stack(
        children: [
          Container(
            width: 300,
            height: 293,
            child: Image.asset(
              pathImage,
              fit: BoxFit.cover,
            ),
          ),

          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20, top: 80),
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    offset: Offset(3.5, 1.5),
                    blurRadius: 1.0,
                    color: Color(0xff1a1818),
                  ),
                ],
              ),
            ),
          ),

          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 20, bottom: 60),
            child: Text(
              time.toString() + ' min',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                shadows: [
                  Shadow(
                      offset: Offset(1.0, 2),
                      blurRadius: 1.0,
                      color: Colors.black54),
                ],
                color: Color(0xffff8800),
              ),
            ),
          ),

          //Texto kCal
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 20, bottom: 30),
            child: Text(
              kcal + ' kCal',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                shadows: [
                  Shadow(
                      offset: Offset(1.0, 2),
                      blurRadius: 1.0,
                      color: Colors.black54),
                ],
                color: Color(0xffff8800),
              ),
            ),
          ),
        ],
      ),
    ),
  );
  return renderedCard;
}

renderAddCard() {
  Card addCard = Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: GestureDetector(),
  );
  return addCard;
}

renderList(var context) {
  Widget buildList = StreamBuilder<QuerySnapshot>(
    stream: firestoreInstance.collection('chestTraining').snapshots(),
    builder: (context, snapshot) => snapshot.hasData
        ? ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: snapshot.data.docs?.length ?? 0,
            itemBuilder: (context, index) => Container(
              width: 300,
              padding: EdgeInsets.only(left: 15),
              child: renderCard(
                snapshot.data.docs[index].data()['id'],
                snapshot.data.docs[index].data()['imagePath'],
                snapshot.data.docs[index].data()['title'],
                snapshot.data.docs[index].data()['time'],
                snapshot.data.docs[index].data()['kCal'],
                context,
                snapshot.data.docs.length,
                index,
              ),
            ),
          )
        : Center(
            child: CircularProgressIndicator(),
          ),
  );
  return buildList;
}
