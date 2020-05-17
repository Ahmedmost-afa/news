import 'package:flutter/material.dart';
import 'package:flutterapp/shared_ui/navigation_drawer.dart';

import 'home_tabs/favourites.dart';
import 'home_tabs/popular.dart';
import 'home_tabs/whats_new.dart';

class HeadLineNews extends StatefulWidget {
  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}

class _HeadLineNewsState extends State<HeadLineNews> with TickerProviderStateMixin {
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
        title: Text('Whats New'),
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
            Favourites(),
            Popular(),
            Favourites(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
