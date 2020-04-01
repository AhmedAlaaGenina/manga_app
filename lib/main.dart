import 'package:flutter/material.dart';
import 'package:manga_app/screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      //ThemeData(primaryColor: Colors.amber[700]),

      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
