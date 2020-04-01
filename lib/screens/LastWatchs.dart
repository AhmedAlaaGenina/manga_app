import 'package:flutter/material.dart';

class LastWatch extends StatefulWidget {
  @override
  _LastWatchState createState() => _LastWatchState();
}

class _LastWatchState extends State<LastWatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'You Don\'t Watch Any Manga !',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
