import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manga_app/screens/login.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ),
          ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[700],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            //height: MediaQuery.of(context).size.height,
            //width: MediaQuery.of(context).size.width / 2,
            child: Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  'assets/logo.png',
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                //height: MediaQuery.of(context).size.height - 100,
                // width: MediaQuery.of(context).size.width / 4,
                child: Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.deepOrangeAccent,
                  ),
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Wait Please ... !'),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
