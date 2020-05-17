import 'package:flutter/material.dart';
import 'package:flutterapp/screens/onBoarding.dart';
import 'package:flutterapp/shared_ui/navigation_drawer.dart';
import 'home_tabs/whats_new.dart';
import 'home_tabs/popular.dart';
import 'home_tabs/favourites.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appianist'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
        bottom: TabBar(tabs: <Widget>[
          Tab(text: 'WHATS NEW'),
          Tab(text: 'POPULAR'),
          Tab(text: 'FAVOURTIES'),

        ], controller: _tabController, indicatorColor: Colors.white,),
      ),
    // drawer: NavigationDrawer(),
      body: Center(
        child: TabBarView(
          children: <Widget>[
           WhatsNew(),
           Popular(),
            Favourites(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}

