import 'dart:math';

import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  List<Color> colorsList = [
    Colors.teal,
    Colors.lightBlue,
    Colors.deepPurpleAccent,
    Colors.black54,
    Colors.brown
  ];

  Random random = Random();
  Color _getRandomColor(){
  return colorsList[random.nextInt(colorsList.length)];
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, position){
          return Card(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  _authorRow(),
                  SizedBox(height: 16,),
                  _itemRow(),
                ],
              ),
            ),
          );
        }
    );
  }
  Widget _authorRow(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(

            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: ExactAssetImage('Images/climate3.jpg'),
                  fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
                width: 50,
                height: 50,
                margin: EdgeInsets.only(right: 10),
              ),
              Column(
                children: <Widget>[
                  Text('Micheal Adams'),
                  SizedBox(height: 15,),
                  Row(
                    children: <Widget>[
                      Text('15 min' , style: TextStyle(color: Colors.grey.shade600),),
                      SizedBox(width: 10,),
                      Text('life style' , style: TextStyle(color: _getRandomColor()),),
                    ],
                  ),
                ],
              ),
            ],
          ),
          IconButton(icon: Icon(Icons.bookmark_border), color: Colors.grey.shade600 ,onPressed: (){})
        ],
      );
  }

  Widget _itemRow(){
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: ExactAssetImage('Images/dark.jpg') , fit: BoxFit.cover),

          ),
          width: 100,
          height: 100,
          margin: EdgeInsets.only(right: 10),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Text('Hello from the other world' , style: TextStyle(
                  color: Colors.grey.shade700 ,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
              ),
              Text('You can find whatever you want evrywhere, climate and politics and also sport ofcourse, '
                  'You can find whatever you want evrywhere',
              style: TextStyle(color: Colors.grey.shade500 , height: 1.5),
              )
            ],
          ),
        ),
      ],
    );
  }
}
