import 'package:flutter/material.dart';
import 'package:manga_app/screens/Register.dart';
import 'package:manga_app/screens/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget buildTFF(String hint, bool secure) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: secure,
        decoration: InputDecoration(
          labelText: hint,
          fillColor: Colors.deepOrangeAccent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          hintStyle: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        title: Text('LogIn'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          buildTFF('Username', false),
          buildTFF('Password', true),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.amber[700],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text('login'),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Register(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.amber[700],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text('Register'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
