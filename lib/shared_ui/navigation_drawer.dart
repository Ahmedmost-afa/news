import 'package:flutter/material.dart';
import 'package:flutterapp/models/nav_menu.dart';
import 'package:flutterapp/screens/home_screen.dart';
import 'package:flutterapp/screens/headlines_news.dart';
import 'package:flutterapp/screens/twitter_feed.dart';
import 'package:flutterapp/screens/instgram_feed.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {

  List<NavMenuItem> navigationMenu = [
    NavMenuItem('Explore', () => HomeScreen() ),
    NavMenuItem('HeadLine News', () => HeadLineNews() ),
    NavMenuItem('Twitter Feed', () => TwitterFeed() ),
    NavMenuItem('Instgram Feed', () => InstgramFeed() ),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
          itemBuilder: (context, position){
            return Padding(
              padding: EdgeInsets.all(8),
              child: ListTile(
                title: Text(navigationMenu[position].title, style: TextStyle(color: Colors.grey.shade700),),
                trailing: Icon(Icons.chevron_right , color: Colors.grey.shade500,),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return navigationMenu[position].destination();
                  }));
                }
              ),
            );
          },
         itemCount: navigationMenu.length,
      ),
    );
  }
}
