import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manga_app/screens/Seinen.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget _buildPageView() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Seinen()));
        },
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 200,
                width: 100,
                child: SizedBox(
                  width: 5,
                  child: Image(
                    image: AssetImage('assets/hd.jpg'),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'One Paice',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Column(
                    children: <Widget>[
                      Text('One Paice'),
                      Text('go on'),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Divider(
          color: Colors.amber[700],
        ),
        Center(
          child: Text(
            'Last Added !',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Divider(
          color: Colors.amber[700],
        ),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, position) {
              return _buildPageView();
            },
          ),
        ),
        Divider(
          color: Colors.amber[700],
        ),
        Center(
            child: Text(
          'Most Read Now !',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        Divider(
          color: Colors.amber[700],
        ),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, position) {
              return _buildPageView();
            },
          ),
        ),
        Divider(
          color: Colors.amber[700],
        ),
        Center(
            child: Text(
          'Most Read This Week !',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        Divider(
          color: Colors.amber[700],
        ),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, position) {
              return _buildPageView();
            },
          ),
        ),
      ],
    );
  }
}
