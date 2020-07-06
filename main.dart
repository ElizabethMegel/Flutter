import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp
    (home: App())
  );
}


class App extends StatefulWidget {
  @override
  _Screen createState() => new _Screen();
}

class _Screen extends State<App> {
  final Random _random = Random();
  Color _color = Color.fromARGB(255,7,78,154);

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Tap anywhere on the screen",
        ),
        backgroundColor: Colors.grey,
      ),
      body: InkWell(
        onTap: changeColor,
        child: Container(
          color: _color,
          child: Center(
            child: Text(
              "Hey There",
              style: TextStyle(
                fontSize: 80.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}