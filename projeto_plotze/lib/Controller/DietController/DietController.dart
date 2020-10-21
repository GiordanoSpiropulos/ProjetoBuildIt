import 'package:flutter/material.dart';

Map<String, dynamic> _imagesDiet = {
  "body": [
    {
      "id": 1,
      "imagePath": "lib/assets/img/comida1.jpg",
      "title": 'Alimentação controlada',
     
    },
    {
      "id": 2,
      "imagePath": "lib/assets/img/comida2.jpg",
      "title": 'Emagrecer',
     
    },
    {
      "id": 3,
      "imagePath": "lib/assets/img/comida3.jpg",
      "title": 'Ganho de massa',
   
    },
  ],
};


renderCard(var pathImage, var title,var context) {
  Card renderedCard = Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/DietInfoScreen');
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
         

  
        ],
      ),
    ),
  );
  return renderedCard;
}

renderList(var context) {
  Widget buildList = ListView.builder(
    
      scrollDirection: Axis.horizontal,
      itemCount: _imagesDiet['body'].length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 300,
          padding: EdgeInsets.only(left: 15),
          child: renderCard(
            _imagesDiet['body'][index]['imagePath'],
            _imagesDiet['body'][index]['title'],
        
            context,
          ),
        );
      });

  return buildList;
}