import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context , position){
           return Card(
              child: _drawSingleRow(),
           );
        },
      itemCount: 20,
        );

  }
  Widget _drawSingleRow(){
    return  Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            child: Image(
              image: ExactAssetImage('Images/climate1.jpg'),
              fit: BoxFit.cover,
            ),
            width: 100,
            height: 100,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                children: <Widget>[
                  Text(
                    ' The World Global Warming Annual Summit',
                    maxLines: 2,

                    style: TextStyle(color: Colors.grey.shade800 , fontSize: 15 , fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: <Widget>[
                      Text('Ahmed Mostafa'),
                      Icon(Icons.terrain),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
