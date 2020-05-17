import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _upperImage(),
          _drawerTopStories(),

        ],
      ),
    );
  }

  Widget _upperImage(){
    TextStyle _headerStyle = TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.bold
    );
    TextStyle _descriptionStyle = TextStyle(
        color: Colors.white,
        fontSize: 15,

    );
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        image: DecorationImage(image: ExactAssetImage('Images/dark.jpg'), fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'News Everywhere',
              style: _headerStyle,
            ),
            SizedBox(height: 10.0,),
            Text(
                'we cover news everywhere and what ever you want',
              style: _descriptionStyle,
            ),
          ],
        ),
      ),
    );

  }
  Widget _drawerTopStories(){
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
         Padding(
             padding: EdgeInsets.only(top: 15, left: 25),
             child: _drawSectionTitle('Top Stories')
         ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Card(
              child: Column(
                children: <Widget>[
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                ],
              ),
            ),
          ),
          Padding(                                           // starting of recent updates section
            padding: EdgeInsets.only(top: 15, left: 25),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 15, left: 25),
                    child: _drawSectionTitle('Recent Updates')
                ),
                _drawRecentUpdates('Sport'),
                _drawRecentUpdates('Politics'),

              ],
            ),
          ),
        ],
      ),
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

  Widget _drawDivider(){
    return Container(
      height: 10,
      width: double.infinity,
      color: Colors.grey.shade200,
    );
  }
  Widget _drawSectionTitle( String title){

      return Text(
        '$title',
        style: TextStyle(color: Colors.grey.shade700 , fontWeight: FontWeight.w600),
      );

  }

  Widget _drawRecentUpdates( String textPart){
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
         Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: ExactAssetImage('Images/climate2.jpg') , fit: BoxFit.cover)
          ),
           width: double.infinity ,
           height: MediaQuery.of(context).size.height * .3
        ),
          Padding(
            padding: EdgeInsets.only(top:4 , bottom: 2, left: 4, right: 4),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding:EdgeInsets.only(top:2 , bottom: 2, left: 16, right: 16) ,
                  child: Text(textPart , style: TextStyle(color: Colors.white),),

              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:4 , bottom: 1, left: 4, right: 4),
            child: Text(
              'What The main factor of consequence of seasons',
            ),
          ),

      ],
      ),
    );
  }
}





