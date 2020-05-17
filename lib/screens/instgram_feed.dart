import 'package:flutter/material.dart';
import 'package:flutterapp/shared_ui/navigation_drawer.dart';

class InstgramFeed extends StatefulWidget {
  @override
  _InstgramFeedState createState() => _InstgramFeedState();
}

class _InstgramFeedState extends State<InstgramFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twitter Feed'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){})
        ],
      ),
      drawer: NavigationDrawer() ,
      body: ListView.builder(
        itemBuilder: ( context, position){
          return Card(
            child: Column(
              children: <Widget>[

              ],
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
