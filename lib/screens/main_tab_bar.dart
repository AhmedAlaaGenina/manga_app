import 'package:flutter/material.dart';
import 'package:manga_app/screens/LastAdded.dart';
import 'package:manga_app/screens/MainPage.dart';
import 'package:manga_app/screens/Special.dart';

class MainTabBar extends StatefulWidget {
  @override
  _MainTabBarState createState() => _MainTabBarState();
}

class _MainTabBarState extends State<MainTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height: 30,
              child: AppBar(
                bottom: TabBar(
                  tabs: <Widget>[
                    Text("All"),
                    Text("Special"),
                    Text("Last added"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[MainPage(), Special(), LastAdded()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
