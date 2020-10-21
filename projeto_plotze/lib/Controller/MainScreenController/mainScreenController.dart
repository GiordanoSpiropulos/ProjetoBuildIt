import 'package:flutter/material.dart';

Map<String, dynamic> _imagesChest = {
  "body": [
    {
      "id": 1,
      "imagePath": "lib/assets/img/training1.jpg",
      "title": 'Treino Iniciante',
      "time": "15 min",
      "kcal": "150-250 kCal"
    },
    {
      "id": 2,
      "imagePath": "lib/assets/img/training2.jpg",
      "title": 'Treino Intermediario',
      "time": "23 min",
      "kcal": "150-250 kCal"
    },
    {
      "id": 3,
      "imagePath": "lib/assets/img/training3.jpg",
      "title": 'Treino Avançado',
      "time": "35 min",
      "kcal": "150-250 kCal"
    },
  ],
};



renderCard(var pathImage, var title, var time, var kcal,var context) {
  Card renderedCard = Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/TrainingInfoScreen');
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
              time,
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
              kcal,
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

renderList(var context) {
  Widget buildList = ListView.builder(
    
      scrollDirection: Axis.horizontal,
      itemCount: _imagesChest['body'].length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 300,
          padding: EdgeInsets.only(left: 15),
          child: renderCard(
            _imagesChest['body'][index]['imagePath'],
            _imagesChest['body'][index]['title'],
            _imagesChest['body'][index]['time'],
            _imagesChest['body'][index]['kcal'],
            context,
          ),
        );
      });

  return buildList;
}
