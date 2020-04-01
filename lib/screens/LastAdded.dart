import 'package:flutter/material.dart';

class LastAdded extends StatefulWidget {
  @override
  _LastAddedState createState() => _LastAddedState();
}

class _LastAddedState extends State<LastAdded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'No Added ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
