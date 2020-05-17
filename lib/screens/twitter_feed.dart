import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TwitterFeed extends StatefulWidget {
  @override
  _TwitterFeedState createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twitter Feed'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){})
        ],
      ),
      body: ListView.builder(
          itemBuilder: ( context, position){
            return Card(
              child: Column(
                children: <Widget>[
                  _cardHeader(),
                  _cardBody(),
                  _drawLine(),
                  _cardFooter(),
                ],
              ),
            );
          },
        itemCount: 20,
      ),
    );
  }
  Widget _cardHeader(){
      return Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: CircleAvatar(
              backgroundImage: ExactAssetImage('Images/dark.jpg'),
              radius: 24,

            ),
          ),

          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Christina Myers' , style: TextStyle(color: Colors.grey.shade900 , fontSize: 16 , fontWeight: FontWeight.w600),),
                  SizedBox(width: 8,)
                ],
              ),
              SizedBox(height: 8,),
              Text('Fri , 12 may 2017')

            ],
          ),
        ],
      );
  }
  Widget _cardBody(){
      return Padding(
        padding: EdgeInsets.only(left: 16, bottom: 8, right: 16),
        child: Text('we also Talking about every thing you need , future of the work as report advance'),
      );
  }
  Widget _cardFooter(){
      return Padding(
        padding: EdgeInsets.only(left: 16, bottom: 8, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.repeat , color: Colors.grey,),
                Text('25')
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton( onPressed: (){}, child: Text('SHARE' , style: TextStyle(color: Colors.deepPurple),),),
                FlatButton( onPressed: (){}, child: Text('OPEN'),)
              ],
            ),
          ],
        ),
      );
  }
  Widget _drawLine(){
    return Container(
      height: 1,
      color: Colors.grey.shade200,
    );
  }

}
