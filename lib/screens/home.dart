import 'package:flutter/material.dart';
import 'package:manga_app/screens/Downloads.dart';
import 'package:manga_app/screens/Josei.dart';
import 'package:manga_app/screens/Kodomomuke.dart';
import 'package:manga_app/screens/LastWatchs.dart';
import 'package:manga_app/screens/Seinen.dart';
import 'package:manga_app/screens/Shounen.dart';
import 'package:manga_app/screens/favourite.dart';
import 'package:manga_app/screens/main_tab_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _SelectedIndex = 0;
  List _Pages = [MainTabBar(), Favourite(), LastWatch(), Download()];
  Widget _createListItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          ),
          Icon(icon),
        ],
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        title: Text(
          'MANGA',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: _Pages[_SelectedIndex],
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Ahmed Alaa',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.yellowAccent)),
              accountEmail: Text(
                'ahmed.alaa4080@gmail.com',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.yellowAccent),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellowAccent,
                child: Text(
                  'A',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover),
              ),
            ),
            _createListItem(
              text: 'All Manga',
              icon: Icons.all_inclusive,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => HomePage()));
              },
            ),
            _createListItem(
              icon: Icons.arrow_forward_ios,
              text: 'Shounen',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Shounen()));
              },
            ),
            _createListItem(
              icon: Icons.arrow_forward_ios,
              text: 'Seinen',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Seinen()));
              },
            ),
            _createListItem(
              icon: Icons.arrow_forward_ios,
              text: 'Shojo',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Kodomomuke()));
              },
            ),
            _createListItem(
              icon: Icons.arrow_forward_ios,
              text: 'Josei',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Josei()));
              },
            ),
            _createListItem(
              icon: Icons.arrow_forward_ios,
              text: ' Kodomomuke',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Kodomomuke()));
              },
            ),
            Divider(),
            _createListItem(
              icon: Icons.clear,
              text: 'Close',
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            Divider(),
            _createListItem(
              icon: Icons.face,
              text: 'Authors',
              onTap: () {},
            ),
            _createListItem(
              icon: Icons.account_box,
              text: 'Connacted Us',
              onTap: () {},
            ),
            _createListItem(
              icon: Icons.bug_report,
              text: 'Report an issue',
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                title: Text('0.0.1'),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(
            () {
              _SelectedIndex = index;
            },
          );
        },
        currentIndex: _SelectedIndex,
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.amber[300],
        selectedItemColor: Colors.amber[800],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            title: Text('Favourite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch_later),
            title: Text('Last Watch'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_download),
            title: Text('Download'),
          )
        ],
      ),
    );
  }
}
